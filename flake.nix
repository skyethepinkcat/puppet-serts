{
  description = "My Puppet Environment";

  nixConfig = {
    extra-substituters = "https://nixpkgs-ruby.cachix.org";
    extra-trusted-public-keys = "nixpkgs-ruby.cachix.org-1:vrcdi50fTolOxWCZZkw0jakOnUI1T19oYJ+PRYdK4SM=";
  };

  inputs = {
    nixpkgs.url = "nixpkgs";
    ruby-nix.url = "github:inscapist/ruby-nix";
    flake-parts.url = "github:hercules-ci/flake-parts";
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # a fork that supports platform dependant gem
    bundix = {
      url = "github:inscapist/bundix/main";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    bob-ruby = {
      url = "github:bobvanderlinden/nixpkgs-ruby";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      ruby-nix,
      bundix,
      bob-ruby,
      flake-parts,
      ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; } (_: {

      imports = [
        inputs.treefmt-nix.flakeModule
      ];
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];
      perSystem =
        { system, pkgs, ... }:
        let
          inherit
            (rubyNix {
              inherit gemset ruby;
              name = "puppet-dev";
              gemConfig = pkgs.defaultGemConfig // gemConfig;
              groups = [
                "default"
                "development"
                "test"
                "system-tests"
              ];
            })
            env
            ;
          pkgs = import inputs.nixpkgs {
            inherit system;
            overlays = [
              bob-ruby.overlays.default
              (final: prev: {
                augeas = prev.augeas.overrideAttrs (oldAttrs: {
                  configureFlags = final.lib.optional final.stdenv.buildPlatform.isDarwin [
                    "--disable-gnulib-tests"
                  ];
                });
              })
            ];

          };
          rubyNix = ruby-nix.lib pkgs;

          # TODO generate gemset.nix with bundix
          gemset = if builtins.pathExists ./gemset.nix then import ./gemset.nix else { };

          # If you want to override gem build config, see
          #   https://github.com/NixOS/nixpkgs/blob/master/pkgs/development/ruby-modules/gem-config/default.nix
          gemConfig = {
            ruby-augeas = attrs: {
              nativeBuildInputs = with pkgs; [
                augeas
                pkg-config
                libxml2
              ];
            };
          };

          # See available versions here: https://github.com/bobvanderlinden/nixpkgs-ruby/blob/master/ruby/versions.json
          ruby = pkgs."ruby-3.2.9";

          # Running bundix would regenerate `gemset.nix`
          bundixcli = bundix.packages.${system}.default;

          # Use these instead of the original `bundle <mutate>` commands
          bundleLock = pkgs.writeShellScriptBin "bundle-lock" ''
            export BUNDLE_PATH=vendor/bundle
            bundle lock
          '';
          bundleUpdate = pkgs.writeShellScriptBin "bundle-update" ''
            export BUNDLE_PATH=vendor/bundle
            bundle lock --update
          '';
        in
        {
          _module.args.pkgs = pkgs;
          treefmt = {
            settings.formatter = {
              "puppet-lint" = {
                command = "${env}/bin/puppet-lint";

                includes = [ "*.pp" ];
              };
            };
          };
          devShells.default = pkgs.mkShell {
            packages = [
              env
              bundixcli
              bundleLock
              bundleUpdate
            ]
            ++ (with pkgs; [
              gitlint
              # more packages here
            ]);
          };
        };
    });
}
