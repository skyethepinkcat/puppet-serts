{
  activesupport = {
    dependencies = ["base64" "bigdecimal" "concurrent-ruby" "connection_pool" "drb" "i18n" "json" "logger" "minitest" "securerandom" "tzinfo" "uri"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "03m2vjhq3nmc8c3hpivxhvkjd8igg16nmv0p2fgdsgacppgy1991";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "8.1.3";
  };
  addressable = {
    dependencies = ["public_suffix"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1by7h2lwziiblizpd5yx87jsq8ppdhzvwf08ga34wzqgcv1nmpvz";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.9.0";
  };
  ast = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10yknjyn0728gjn6b5syynvrvrwm66bhssbxq8mkhshxghaiailm";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.4.3";
  };
  async = {
    dependencies = ["console" "fiber-annotation" "io-event" "metrics" "traces"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ah038cvb5k7vr29z5jkjhdwqpinrchglz87i1bv9fzjfc07666z";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.39.0";
  };
  async-http = {
    dependencies = ["async" "async-pool" "io-endpoint" "io-stream" "metrics" "protocol-http" "protocol-http1" "protocol-http2" "protocol-url" "traces"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0v3q2kn9j5vfag7b4zv2vc1i4jkrqjz1pc109df6vh04q9cd8g8c";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.95.1";
  };
  async-http-faraday = {
    dependencies = ["async-http" "faraday"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1k03asxiiplw19fvjrymxnxf0p08g0wm5bjvimk1307p1jf97ax5";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.22.2";
  };
  async-pool = {
    dependencies = ["async"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vg3lwb3yhq0rad3dm00vp35vrahkbxgl4kx3d2rqkdh09xs2hqa";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.11.2";
  };
  base64 = {
    groups = ["default" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0yx9yn47a8lkfcjmigk79fykxvr80r4m1i35q82sxzynpbm7lcr7";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.3.0";
  };
  bcrypt_pbkdf = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1xjcp484qc4j4z42b087npgj50sd6yixchznp4z9p1k6rqilqhf2";
      target = "ruby";
      type = "gem";
    };
    targets = [{
      remotes = ["https://rubygems.org"];
      sha256 = "03ma7h4i7ic1pkkanirhilk461882h5rqvw55z6c5rjq02fn7x9m";
      target = "x86_64-darwin";
      targetCPU = "x86_64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1slzrzsrmdi06m56slbaivvqmfa1svrb7b6a8j77pafmdvmnzpdg";
      target = "arm64-darwin";
      targetCPU = "arm64";
      targetOS = "darwin";
      type = "gem";
    }];
    version = "1.1.2";
  };
  beaker = {
    dependencies = ["base64" "bcrypt_pbkdf" "beaker-hostgenerator" "benchmark" "ed25519" "hocon" "in-parallel" "inifile" "logger" "minitar" "minitest" "net-scp" "net-ssh" "pstore" "readline" "rexml" "rsync" "stringify-hash" "thor"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0iic8bs90cb42ynghxqgvfyrrc8b0igdk472iwl24ynhvm2wzidf";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.4.1";
  };
  beaker-docker = {
    dependencies = ["beaker" "docker-api" "excon" "stringify-hash"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gn06vw2xpkglxk7kgbdz3s03vw8kn3swysm5imdb5qxffzwpgv9";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.1.2";
  };
  beaker-hiera = {
    dependencies = ["beaker"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1xm1paqjzv5g5yrcfq583qq2icy2nf25fbz9p1x19ny902h0mm5f";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.1.0";
  };
  beaker-hostgenerator = {
    dependencies = ["deep_merge"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lizznk7f5x76025qq8p5wcvv7sjnrsjq45kbb3zliaddxzsmg12";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.6.0";
  };
  beaker-rspec = {
    dependencies = ["beaker" "rspec" "serverspec" "specinfra"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0szfzx181dhl2jm2nx3qd1yhg3p08jpzd075vfb7y9fgxf4fgvw0";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "9.1.0";
  };
  beaker-vagrant = {
    dependencies = ["beaker"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0zixvhzsqqcmyyr0i40m2ljc03zr0spl9s4qvc9nllg9fqiigd49";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.1.0";
  };
  beaker_puppet_helpers = {
    dependencies = ["beaker" "nokogiri" "open-uri" "puppet-modulebuilder"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "109ldlzsczg4lskn9nfndr4wkir1lmkl9h53vd8vixx6izfp4cmk";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.3.1";
  };
  benchmark = {
    groups = ["default" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0v1337j39w1z7x9zs4q7ag0nfv4vs4xlsjx2la0wpv8s6hig2pa6";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.5.0";
  };
  bigdecimal = {
    groups = ["default" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1g9zi8c4i7g8zz0c3hxrw6mblrjvgn7akys60clb9si7c1k1gljk";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.1.2";
  };
  builder = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0pw3r2lyagsxkm71bf44v5b74f7l9r7di22brbyji9fwz791hya9";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.3.0";
  };
  childprocess = {
    dependencies = ["logger"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1v5nalaarxnfdm6rxb7q6fmc6nx097jd630ax6h9ch7xw95li3cs";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.1.0";
  };
  coderay = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0jvxqxzply1lwp7ysn94zjhh57vc14mcshw1ygw14ib8lhc00lyw";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.3";
  };
  concurrent-ruby = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1aymcakhzl83k77g2f2krz07bg1cbafbcd2ghvwr4lky3rz86mkb";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.3.6";
  };
  connection_pool = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "02ifws3c4x7b54fv17sm4cca18d2pfw1saxpdji2lbd1f6xgbzrk";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.2";
  };
  console = {
    dependencies = ["fiber-annotation" "fiber-local" "json"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01vg83f2q7n0q5dsq2sfjmm6mrizhyzkmw21i4ysg06g0slrwna5";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.36.0";
  };
  date = {
    groups = ["default" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1h0db8r2v5llxdbzkzyllkfniqw9gm092qn7cbaib73v9lw0c3bm";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.5.1";
  };
  deep_merge = {
    groups = ["default" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0fjn4civid68a3zxnbgyjj6krs3l30dy8b4djpg6fpzrsyix7kl3";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.2.2";
  };
  diff-lcs = {
    groups = ["default" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qlrj2qyysc9avzlr4zs1py3x684hqm61n4czrsk1pyllz5x5q4s";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.6.2";
  };
  docker-api = {
    dependencies = ["excon" "multi_json"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1rk3vpc7v8jrz432l24bgszwnjj1nsaygj79kcc1i1ycyhsffjw2";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.4.0";
  };
  drb = {
    groups = ["default" "release" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wrkl7yiix268s2md1h6wh91311w95ikd8fy8m5gx589npyxc00b";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.2.3";
  };
  ed25519 = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01n5rbyws1ijwc5dw7s88xx3zzacxx9k97qn8x11b6k8k18pzs8n";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.4.0";
  };
  erb = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ncmbdjf2bwmk0jf5cxywns9zbxyfiy4h4p3pzi7yddyjhv81qrq";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.0.4";
  };
  erubi = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1naaxsqkv5b3vklab5sbb9sdpszrjzlfsbqpy7ncbnw510xi10m0";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.13.1";
  };
  excon = {
    dependencies = ["logger"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0l3dpg45i74ap1d7c4wyrdlc67l9vj4kgzv2l2r8mg1304fss0y5";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.5.0";
  };
  facterdb = {
    dependencies = ["jgrep"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1bq1xsnzkgbgr30zjqkjsv51k5c088izb05c9bsqj0r9a785j4w2";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.4.0";
  };
  faraday = {
    dependencies = ["faraday-net_http" "json" "logger"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1b930ag8nh99v8n9645ac1wcah9fx0mclbp323q4i1ly9acvkk3k";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.14.2";
  };
  faraday-http-cache = {
    dependencies = ["faraday"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "128dkxqssnnz801z86ykpaq4sv7pnac5yrgngbm951f0wsxw8ynd";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.7.0";
  };
  faraday-net_http = {
    dependencies = ["net-http"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "125m3qri52vwh5v9dhq0dkqxf8629cxrf99yyc01pva72wasyy0f";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.4.4";
  };
  faraday-retry = {
    dependencies = ["faraday"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ghys6d46j8mxkqprnlz1ks1y1w0lsa2vca7ybx2crg5ny7w8ybv";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.4.0";
  };
  fast_gettext = {
    dependencies = ["prime" "racc"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1n7gcq1y893ijck42nm0wqxbqc36smmkd49fzcgc63avjkv35ig8";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.1.1";
  };
  ffi = {
    groups = ["default" "development" "system_tests"];
    platforms = [];
    source = null;
    targets = [{
      remotes = ["https://rubygems.org"];
      sha256 = "06q06ylk32yma6ms84sd6cxhlcvp1sbbyal58q51n98r2jpil1qr";
      target = "arm64-darwin";
      targetCPU = "arm64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0bbmph141hwnn3m4k8hx8nhy1imfjpz87h595ww4n1xf5r6b2gcx";
      target = "x86_64-linux-gnu";
      targetCPU = "x86_64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0f8zp5vvnc76mjx4hm5vwamf6nj77c50mvrs512n4rzj2nkbg1lj";
      target = "aarch64-linux-musl";
      targetCPU = "aarch64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0r0mrghywpvzd42mrh83n263gkdqcmx1hpxg25a9bgvprgvxvnyn";
      target = "arm-linux-gnu";
      targetCPU = "arm";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "15bgrz1jpn53sbzq8nkq2rk4n4wkrimmz4r64ipfyns6s3g3hj4x";
      target = "arm-linux-musl";
      targetCPU = "arm";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "15m4rlngxc2ff6pb4b1a11fbvkxl16vn4jgndh4kacng4c2kjw5a";
      target = "x86_64-darwin";
      targetCPU = "x86_64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "17n4m4wj98d6ys0ggjq6y9m651hdnb9z474dxzw0bq1x9249iprz";
      target = "x86_64-linux-musl";
      targetCPU = "x86_64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1pw0q28nvllqysx7g9gv6vy2gz6csbiwm8rx37hzbn7zj5pz025j";
      target = "aarch64-linux-gnu";
      targetCPU = "aarch64";
      targetOS = "linux";
      type = "gem";
    }];
    version = "1.17.4";
  };
  fiber-annotation = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00vcmynyvhny8n4p799rrhcx0m033hivy0s1gn30ix8rs7qsvgvs";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.2.0";
  };
  fiber-local = {
    dependencies = ["fiber-storage"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01lz929qf3xa90vra1ai1kh059kf2c8xarfy6xbv1f8g457zk1f8";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.0";
  };
  fiber-storage = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qa0j9qjwav9xb0n3isx0rbh0942xrfback392n6vs8bidnmp3pl";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.1";
  };
  fiddle = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vifygrkw22gcd4wzh8gc4pv6h1zpk6kll6mmprrf5174wvfxa3z";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.8";
  };
  formatador = {
    dependencies = ["reline"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "156qa2wiizmdalz6cim04yaasdz1q6c6k7yhnpdnrhn26f0qkyhr";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.2.3";
  };
  forwardable = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0f78rjpnhm4lgp1qzadnr6kr02b6afh1lvy7w607k4qjk3641kgi";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.4.0";
  };
  getoptlong = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "198vy9dxyzibqdbw9jg8p2ljj9iknkyiqlyl229vz55rjxrz08zx";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.2.1";
  };
  github_changelog_generator = {
    dependencies = ["activesupport" "async" "async-http-faraday" "benchmark" "faraday-http-cache" "octokit" "rainbow" "rake"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "006h08phnl9pniw8wmnx583nxix4s2rsgxcj0i21x3afl59lrbgn";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.18.0";
  };
  gssapi = {
    dependencies = ["ffi"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qdfhj12aq8v0y961v4xv96a1y2z80h3xhvzrs9vsfgf884g6765";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.3.1";
  };
  guard = {
    dependencies = ["formatador" "listen" "logger" "lumberjack" "nenv" "notiffany" "pry" "shellany" "thor"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nh1fzwm9pq4b0b21nmx87j91qzk3xw9yn60h1hbgrjl723xg75b";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.20.1";
  };
  guard-rake = {
    dependencies = ["guard" "rake"];
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1kfckkykkbdg7vcb231c0vja8lww032a7nkb1lz3py7hvf5khzjx";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.0";
  };
  gyoku = {
    dependencies = ["builder" "rexml"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1kd2q59xpm39hpvmmvyi6g3f1fr05xjbnxwkrdqz4xy7hirqi79q";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.4.0";
  };
  hocon = {
    groups = ["default" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "106dmzsl1bxkqw5xaif012nwwfr3k9wff32cqc77ibjngknj6477";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.4.0";
  };
  httpclient = {
    dependencies = ["mutex_m"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1j4qwj1nv66v3n9s4xqf64x2galvjm630bwa5xngicllwic5jr2b";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.9.0";
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1994i044vdmzzkyr76g8rpl1fq1532wf0sb21xg5r1ilj5iphmr8";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.14.8";
  };
  in-parallel = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0j146p0r89ij4ymdvi9nizbcnbgyl7s3y4g93zxnjxhdhmphp9bm";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.1";
  };
  inifile = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1c5zmk7ia63yw5l2k14qhfdydxwi1sah1ppjdiicr4zcalvfn0xi";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  iniparse = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1wb1qy4i2xrrd92dc34pi7q7ibrjpapzk9y465v0n9caiplnb89n";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.5.0";
  };
  io-console = {
    groups = ["default" "development" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1k0lk3pwadm2myvpg893n8jshmrf2sigrd4ki15lymy7gixaxqyn";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.8.2";
  };
  io-endpoint = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0f1kzf4d5qgqgfjh52a8pf3pii5dmav6ib0zq4wmicqnq5kggsiz";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.17.2";
  };
  io-event = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1v9nfwiixj14kjmx5x2axsa17vzq4qq3k1lbg07qk90rx7qqc5k4";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.16.1";
  };
  io-stream = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0dhnkjf59ayw5xi873a939i63d47lrlqcpphvv73xprb635vq96f";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.13.0";
  };
  irb = {
    dependencies = ["pp" "prism" "rdoc" "reline"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qs8a9vprg7s8krgq4s0pygr91hclqqyz98ik15p0m1sf2h5956y";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.18.0";
  };
  jgrep = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ns4zsxgwz6f9grrggms8pf4x9ifkv91f74mcm6kn447hrc8a5aj";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.5.4";
  };
  json = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1anz6a6n33x4s3906s0bz6x161kk1ns3h7xxsn3rpxkfsw7k2m33";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.19.8";
  };
  json-schema = {
    dependencies = ["addressable" "bigdecimal"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0rinh4347nvl9jm0r4mk7gi1zh1iz367w3dxn8d2r8j5v1pg9gz8";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.2.0";
  };
  listen = {
    dependencies = ["logger" "rb-fsevent" "rb-inotify"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ln9c0vx165hkfbn2817qw4m6i77xcxh6q0r5v6fqfhlcbdq5qf6";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.10.0";
  };
  little-plugger = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1frilv82dyxnlg8k1jhrvyd73l6k17mxc5vwxx080r4x1p04gwym";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.4";
  };
  locale = {
    dependencies = ["fiddle"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1x1fnf4knvyzb9br6ja7b1nvy0860nax0i8rx4ljrnvbmbl06s0w";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.1.5";
  };
  logger = {
    groups = ["default" "development" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00q2zznygpbls8asz5knjvvj2brr3ghmqxgr83xnrdj4rk3xwvhr";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.7.0";
  };
  logging = {
    dependencies = ["little-plugger" "multi_json"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1jqcq2yxh973f3aw63nd3wxhqyhkncz3pf8v2gs3df0iqair725s";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.4.0";
  };
  lumberjack = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "158v35d1l1jjn5dmyawzs82a7fqk1wvw3g1ia21hqf11cgj5mpj0";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.4.2";
  };
  metadata-json-lint = {
    dependencies = ["json-schema" "semantic_puppet" "spdx-licenses"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "183435fvd251dw2l7wsn8qxzq4l3p0xh04v197gdzn9jk1x2f6s0";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.0.0";
  };
  method_source = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1igmc3sq9ay90f8xjvfnswd1dybj1s3fi0dwd53inwsvqk4h24qq";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.0";
  };
  metrics = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wlh0g4xmfqa41dsh4m3514q3jcvy6jx97mwn6ayj62ir6xdbpk1";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.15.0";
  };
  minitar = {
    groups = ["default" "release" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gm2ksf678gr5cqr4a3mzx0zvwrc7z2qvkfd8rwh209qdzxhrnrq";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.0";
  };
  minitest = {
    dependencies = ["drb" "prism"];
    groups = ["default" "release" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1wfnqyfayx9n9j7x871v2ars4hjhfisi1dl24fa64ylq3mns6ghm";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.0.6";
  };
  multi_json = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1040lr5y2phn7avdyam6zw6ikprlmk77biw3yhclsfwfh0qnl4p6";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.21.1";
  };
  mutex_m = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0l875dw0lk7b2ywa54l0wjcggs94vb7gs8khfw9li75n2sn09jyg";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.3.0";
  };
  nenv = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0r97jzknll9bhd8yyg2bngnnkj8rjhal667n7d32h8h7ny7nvpnr";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.3.0";
  };
  net-http = {
    dependencies = ["uri"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15k96fj6qwbaiv6g52l538ass95ds1qwgynqdridz29yqrkhpfi5";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.9.1";
  };
  net-scp = {
    dependencies = ["net-ssh"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0p8s7l4pr6hkn0l6rxflsc11alwi1kfg5ysgvsq61lz5l690p6x9";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.1.0";
  };
  net-ssh = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1m1d6rs40rjvdb6df34fi3za1c2ajdiydv4jzpjj03iq7hhrw0k5";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.3.2";
  };
  net-telnet = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "16nkxc79nqm7fd6w1fba4kb98vpgwnyfnlwxarpdcgywz300fc15";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.2.0";
  };
  nokogiri = {
    dependencies = ["racc"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = null;
    targets = [{
      remotes = ["https://rubygems.org"];
      sha256 = "0fdn4h965nw7si72m2f5l1plwapaqr044yb0wcp4r14ygdfrxf26";
      target = "aarch64-linux-gnu";
      targetCPU = "aarch64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0gza777b8iy6v97vdqkjkbb527wsbzpgslkdnppsbv3645nr1314";
      target = "x86_64-linux-musl";
      targetCPU = "x86_64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0hky6n8ifhfcah42igk2rayplqnkryis2ljhn0cbqyhv9d1bvfbi";
      target = "arm64-darwin";
      targetCPU = "arm64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0kcdfbjjnaqkdz3mchr6yqdrs405ywl6rz323srkmia6gnjzpwvp";
      target = "x86_64-darwin";
      targetCPU = "x86_64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0kvpiq1jzkbd1ijaqllaijsiz2ybgpd8zf4y9a57gb9lqgzxa69r";
      target = "arm-linux-gnu";
      targetCPU = "arm";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0xh913b2dfa8d787mvifs19q2ajk68dk25svkdk86bp11xi7hl1g";
      target = "x86_64-linux-gnu";
      targetCPU = "x86_64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1dlzlz98sbg0mlv2znzanvj93b9y32m3gd8fanqng75v8riwpqcw";
      target = "arm-linux-musl";
      targetCPU = "arm";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1dx0v6qvz66a2jhh5p5j9jr9f6x0vqwc3k79pd6skrqvsbfdz4l3";
      target = "aarch64-linux-musl";
      targetCPU = "aarch64";
      targetOS = "linux";
      type = "gem";
    }];
    version = "1.19.3";
  };
  nori = {
    dependencies = ["bigdecimal"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qb84bbi74q0zgs09sdkq750jf2ri3lblbry0xi4g1ard4rwsrk1";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.7.1";
  };
  notiffany = {
    dependencies = ["nenv" "shellany"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0f47h3bmg1apr4x51szqfv3rh2vq58z3grh4w02cp3bzbdh6jxnk";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.1.3";
  };
  octokit = {
    dependencies = ["faraday" "sawyer"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15lvy06h276jryxg19258b2yqaykf0567sp0n16yipywhbp94860";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.25.1";
  };
  open-uri = {
    dependencies = ["stringio" "time" "uri"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1jl7i0w0vhxpvj54707cpcpqi00maf1dma0mxmm99rirmkyhckvv";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.5.0";
  };
  openfact = {
    dependencies = ["base64" "benchmark" "hocon" "logger" "ostruct" "thor" "tsort"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1adb5lgnczcl26836li52x0g3dcnwkfnra3m9bsb9891jfl9xisc";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.6.1";
  };
  openvox = {
    dependencies = ["base64" "benchmark" "concurrent-ruby" "deep_merge" "fast_gettext" "fiddle" "getoptlong" "locale" "openfact" "ostruct" "puppet-resource_api" "racc" "scanf" "semantic_puppet"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0dg8wqy137104r1phy98iq8hhinn145vhs35x5wqwckc0c5ldik8";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "8.27.0";
  };
  openvox-strings = {
    dependencies = ["irb" "openvox" "rgen" "yard"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1xgrpdia12w35sww2byi3i6dxdll6i7f6i7rg5l0jqa2l3z615ki";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.1.0";
  };
  ostruct = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04nrir9wdpc4izqwqbysxyly8y7hsfr4fsv69rw91lfi9d5fv8lm";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.6.3";
  };
  overcommit = {
    dependencies = ["childprocess" "iniparse" "rexml"];
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1xcipzsa3zpyalawqsx67y671n351zw88ssdia0scj48cwvkmyl1";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.70.0";
  };
  parallel = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0w697335hi5dk5ay9kyn53399sy87y8v0y6ij93m5wmshhadxrik";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.28.0";
  };
  parallel_tests = {
    dependencies = ["parallel"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0p003p7qpdc04m7r7yhv3579fxlxgwhpgy4fmyw27hm2dk2645rz";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.7.0";
  };
  parser = {
    dependencies = ["ast" "racc"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0m2xqvn1la62hji1mn04y59giikww95p2hs0r4y2rrz3mdxcwyni";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.3.11.1";
  };
  pathspec = {
    groups = ["default" "release" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "092d9kwbawgjsf8g5zss8z6plywh8yzh9vfq59xj7f5qmv98dqc9";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.1.0";
  };
  pp = {
    dependencies = ["prettyprint"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1xlxmg86k5kifci1xvlmgw56x88dmqf04zfzn7zcr4qb8ladal99";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.6.3";
  };
  prettyprint = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14zicq3plqi217w6xahv7b8f7aj5kpxv1j1w98344ix9h5ay3j9b";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.2.0";
  };
  prime = {
    dependencies = ["forwardable" "singleton"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0pi2g9sd9ssyrpvbybh4skrgzqrv0rrd1q7ylgrsd519gjzmwxad";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.1.4";
  };
  prism = {
    groups = ["default" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "11ggfikcs1lv17nhmhqyyp6z8nq5pkfcj6a904047hljkxm0qlvv";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.9.0";
  };
  protocol-hpack = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14ddqg5mcs9ysd1hdzkm5pwil0660vrxcxsn576s3387p0wa5v3g";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.5.1";
  };
  protocol-http = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0fvpza7nnbyd3nfxkn5gych6diwns386g2ib9s6azh99c3sz5hg1";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.62.2";
  };
  protocol-http1 = {
    dependencies = ["protocol-http"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1syqgaklsn9rf11xmll2s3ms7jvpd5zjng9jdb3r8pbgv963z6z4";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.39.0";
  };
  protocol-http2 = {
    dependencies = ["protocol-hpack" "protocol-http"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "11kl6768hpzgvvvlpyvmr74v0jqf2vslcwngs3643cl2h3brrj5s";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.26.0";
  };
  protocol-url = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qd9vsn9sif58swfqsyj429aynqyv6hpgbzxqrd83baidcxw1m34";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.4.0";
  };
  pry = {
    dependencies = ["coderay" "method_source" "reline"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0kh5nv8v74k1ccy6gc7nd04aaf1cjkbk7g8pwy2izvcqaq36jv6p";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.16.0";
  };
  pstore = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "06icf1n6z7snygcq51zdm1zdz20cpkd4qw76s6b9wmv65h7lv403";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.2.1";
  };
  psych = {
    dependencies = ["date" "stringio"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1dx5bc3s1mb1i53np4cdkypg7ccygnvagr3hglyndbqilrljvxql";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.4.0";
  };
  public_suffix = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08znfv30pxmdkjyihvbjqbvv874dj3nybmmyscl958dy3f7v12qs";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.0.5";
  };
  puppet-blacksmith = {
    dependencies = ["base64" "puppet-modulebuilder"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0s3iw00d1gxdp4dqzswcjxhfihg59i1ifvynvvi3yrh5fkigklnq";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "9.1.0";
  };
  puppet-lint = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "11j46i4bankyvmknl69pqz15ysrd8l6nwhbl77lslrswx7dlwxqy";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.1.1";
  };
  puppet-lint-absolute_classname-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1iqmzdkz4rzjam4i7zjyz2yfnhvi7ffip76nsqxpyfvxq9030cls";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.0.0";
  };
  puppet-lint-anchor-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0fci0xlmjgd7h8qs46jr1v481yrvkaqnmc9lw7s52sk1yqggzg3i";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  puppet-lint-exec_idempotency-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0sm4p8hfdfaim7czv4jmifyld15m3jbvpmg6z4j3ljj99xcbgwx6";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.0.0";
  };
  puppet-lint-file_ensure-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "12g4im5vmjha5jiyfmfmh3wzg9yasa87zvijm3f5w5vmi9xa9xwv";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  puppet-lint-leading_zero-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "066180drqyihw237ccz041b2ac0n74z7w122q120r8g1d0pxvw09";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  puppet-lint-lookup_in_parameter-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "133q8f3lab6zvxmg0l635cyai702gk09izsrmc8na0j3r06xqbds";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  puppet-lint-manifest_whitespace-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0i07fwpvmrvgvm6m6jiv2jcckwxw7s3a2srjkxzh547sxs55i4fd";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.0.0";
  };
  puppet-lint-optional_default-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0iww5iwd7pqmgnpzpx5gchfqdqaivngk1s8izpflwk5z496xx35k";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  puppet-lint-package_ensure-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1gsf4p2qb5q10kr7fs9j13wc7ga239x5624s0cn9bj2gqbkg6q0j";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.2.0";
  };
  puppet-lint-param-docs = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "06jz9kfxbjan1z44da25lsvmz5f1qib0z2k8c8af784kdmmdr2s6";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  puppet-lint-param-types = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0l59ss4rbvazz4ixnq6fi3xdjc4ihpn3cx6yykmxm75vns8552hh";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  puppet-lint-params_empty_string-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0q4bgiz2hb9dgdapdk9p52r0ijpjxgs9fnbnm8y5fd76iwa4wwkl";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  puppet-lint-params_not_optional_with_undef-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1q5c997hyxygf28aslwjpgy1vz1qk11ii43mcpg763038jpf2zla";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.0";
  };
  puppet-lint-resource_reference_syntax = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "005pb5hpbx4x8h0ma13c8j9q6p2zp6qvp7nhqgqcirh2vplxrnpn";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  puppet-lint-strict_indent-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0fwz7q3r3hkw5a56nn1lnlkvpbsl8j5xd80zagd4wcfqvp0da85v";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.0.0";
  };
  puppet-lint-topscope-variable-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vq904c0isycp0c0nfk37nvc974rfsf01a3yif1pdsrfdfhxrlas";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  puppet-lint-trailing_comma-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "06n4c45sj9q29gvclcw6g7d9lr0bmxii83j2ckx9ca6ja13cwz2n";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.1";
  };
  puppet-lint-unquoted_string-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1pm3682rhv2fmbrp0jganiqm89xx08z9f46mwsangnhk3zhd9bwq";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.1.0";
  };
  puppet-lint-variable_contains_upcase = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0naxlvr4vilnhpc7qxbajwvhpaj5f9rxmm6iaanyz9j54i1hb9gc";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  puppet-lint-version_comparison-check = {
    dependencies = ["puppet-lint"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1391rk7kcn32n1nhz1pbqg4p0x5k7q5x7qi4m5hs6dp6aqdbl5vj";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  puppet-modulebuilder = {
    dependencies = ["minitar" "pathspec"];
    groups = ["default" "release" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0kcykf9zi4bgp3k91ha6gbn8hypz0y5x2506fda8v0nxdwr96wzf";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.1.0";
  };
  puppet-resource_api = {
    dependencies = ["hocon"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1i6rdwkc75h4py7cx66gkc42mdg5bfwhdxw713dcpy75snszqja6";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.0.0";
  };
  puppet-syntax = {
    dependencies = ["openvox" "rake"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1p1bmnxvcd8m29h7apxz918365jhp5ai2yvvr86a4dzwk3188bzn";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.2.0";
  };
  puppet_fixtures = {
    dependencies = ["logger" "rake"];
    groups = ["default" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0g9mbp7v47icxrw6cx6dm2ck2yfacb7aj4gfd1q7p0lck7l2x292";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.2.2";
  };
  puppet_metadata = {
    dependencies = ["metadata-json-lint" "semantic_puppet"];
    groups = ["test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "11bs6ksgjy1q7kfrlrb2dfwrwz2as6r5rhpx9qa7xr0fc9hwl7di";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.3.0";
  };
  racc = {
    groups = ["default" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0byn0c9nkahsl93y9ln5bysq4j31q8xkf2ws42swighxd4lnjzsa";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.8.1";
  };
  rainbow = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0smwg4mii0fm38pyb5fddbmrdpifwv22zv3d3px2xx497am93503";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.1.1";
  };
  rake = {
    groups = ["default" "development" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "009p524zl0p0kfa65nii8wdmaigkmawv9pbvlcffky7islmmp0nb";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "13.4.2";
  };
  rb-fsevent = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zmf31rnpm8553lqwibvv3kkx0v7majm1f341xbxc0bk5sbhp423";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.11.2";
  };
  rb-inotify = {
    dependencies = ["ffi"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0vmy8xgahixcz6hzwy4zdcyn2y6d6ri8dqv5xccgzc1r292019x0";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.11.1";
  };
  rdoc = {
    dependencies = ["erb" "psych" "tsort"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14iiyb4yi1chdzrynrk74xbhmikml3ixgdayjma3p700singfl46";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.2.0";
  };
  readline = {
    dependencies = ["reline"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0shxkj3kbwl43rpg490k826ibdcwpxiymhvjnsc85fg2ggqywf31";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.0.4";
  };
  regexp_parser = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fwfw26a32rps78920nn29shqg2zmqv72i89j1fap41isshida9m";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.12.0";
  };
  reline = {
    dependencies = ["io-console"];
    groups = ["default" "development" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0d8q5c4nh2g9pp758kizh8sfrvngynrjlm0i1zn3cnsnfd4v160i";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.6.3";
  };
  rexml = {
    groups = ["default" "development" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hninnbvqd2pn40h863lbrn9p11gvdxp928izkag5ysx8b1s5q0r";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.4.4";
  };
  rgen = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wgk4brd1v63ivdh5nnlkynfxk8m7bac9q50ydgq3d50hx4ghy6r";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.10.2";
  };
  rspec = {
    dependencies = ["rspec-core" "rspec-expectations" "rspec-mocks"];
    groups = ["default" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "11q5hagj6vr694innqj4r45jrm8qcwvkxjnphqgyd66piah88qi0";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.13.2";
  };
  rspec-core = {
    dependencies = ["rspec-support"];
    groups = ["default" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0bcbh9yv6cs6pv299zs4bvalr8yxa51kcdd1pjl60yv625j3r0m8";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.13.6";
  };
  rspec-expectations = {
    dependencies = ["diff-lcs" "rspec-support"];
    groups = ["default" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0dl8npj0jfpy31bxi6syc7jymyd861q277sfr6jawq2hv6hx791k";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.13.5";
  };
  rspec-github = {
    dependencies = ["rspec-core"];
    groups = ["default" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1bv8b6ld7w3rccjnxqypfdg35i91wyv551sr41647r6krbc3rbs6";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  rspec-its = {
    dependencies = ["rspec-core" "rspec-expectations"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1pv0a8pvixgrwsi6j4nlpyn9m0jw9zn92dakjdg87wj9h71qp3m8";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.0.0";
  };
  rspec-mocks = {
    dependencies = ["diff-lcs" "rspec-support"];
    groups = ["default" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0iqxmw0knjiz5nf6pgr8ihs6cjzh89f0ppj3fqiz8cvms79x6sh8";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.13.8";
  };
  rspec-puppet = {
    dependencies = ["rspec"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1hcalwdd4dfs3x213395rkrjxcg514zmzd0yrrnq2d02xqhrccbp";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.0.0";
  };
  rspec-puppet-facts = {
    dependencies = ["deep_merge" "facterdb" "openfact"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14jizp552g71i6s832dh1k215yjn2khi74vyilrcpnapy9bw7n3x";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.2.0";
  };
  rspec-support = {
    groups = ["default" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0z64h5rznm2zv21vjdjshz4v0h7bxvg02yc6g7yzxakj11byah06";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.13.7";
  };
  rsync = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0p8b27q1gvxilqfq2528xpwglzcm2myikkjxpqk7mwbwg9r6knxv";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.9";
  };
  rubocop = {
    dependencies = ["json" "parallel" "parser" "rainbow" "regexp_parser" "rexml" "rubocop-ast" "ruby-progressbar" "unicode-display_width"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0l46lw5gfj3mcm982wpmx7br4rs466gyislv0hfwcsk8dxhv1zkw";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.50.2";
  };
  rubocop-ast = {
    dependencies = ["parser" "prism"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0dahfpnzz63hyqxa03x8rypnrxzwyvh4i5a8ri34bzpnf3pg64j4";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.49.1";
  };
  rubocop-capybara = {
    dependencies = ["rubocop"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1aw0n8jwhsr39r9q2k90xjmcz8ai2k7xx2a87ld0iixnv3ylw9jx";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.21.0";
  };
  rubocop-rake = {
    dependencies = ["rubocop"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1nyq07sfb3vf3ykc6j2d5yq824lzq1asb474yka36jxgi4hz5djn";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.6.0";
  };
  rubocop-rspec = {
    dependencies = ["rubocop" "rubocop-capybara"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ydmr0qhldrndh86zy87yyl17i1mcxfv83jzb6lmx18cghkz7lpd";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.20.0";
  };
  ruby-progressbar = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0cwvyb7j47m7wihpfaq7rc47zwwx9k4v7iqd9s1xch5nm53rrz40";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.13.0";
  };
  rubyntlm = {
    dependencies = ["base64"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1x8l0d1v88m40mby4jvgal46137cv8gga2lk7zlrxqlsp41380a7";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.6.5";
  };
  sawyer = {
    dependencies = ["addressable" "faraday"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hayryyz46nlkcb6j0ij0kxq6i3ryiigwfc6ccvp0108hhlij3qd";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.9.3";
  };
  scanf = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "000vxsci3zq8m1wl7mmppj7sarznrqlm6v2x2hdfmbxcwpvvfgak";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.0";
  };
  securerandom = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1cd0iriqfsf1z91qg271sm88xjnfd92b832z49p1nd542ka96lfc";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.4.1";
  };
  semantic_puppet = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15ksbizvakfx0zfdgjbh34hqnrnkjj47m4kbnsg58mpqsx45pzqm";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.1";
  };
  serverspec = {
    dependencies = ["multi_json" "rspec" "rspec-its" "specinfra"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xwf9cyri9bajkvx2fmkgc23qydgd8g22ckkx9kkg9k681gys1q2";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.43.0";
  };
  sfl = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qm4hvhq9pszi9zs1cl9qgwx1n4wxq0af0hq9sbf6qihqd8rwwwr";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.3";
  };
  shellany = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ryyzrj1kxmnpdzhlv4ys3dnl2r5r3d2rs2jwzbnd1v96a8pl4hf";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.0.1";
  };
  singleton = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0y2pc7lr979pab5n5lvk3jhsi99fhskl5f2s6004v8sabz51psl3";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.3.0";
  };
  spdx-licenses = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0zgnlj7rww1hrm9sv4kk06j6f5n5xbmn79m2as5rjpsbf7rj0f4m";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.4.0";
  };
  specinfra = {
    dependencies = ["base64" "net-scp" "net-ssh" "net-telnet" "sfl"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "02zri1ic2b3x2vgcwb8zfga25sra8qwgpwvmd2ggckkcvybcbcvs";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.95.0";
  };
  stringify-hash = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1wmv52g47ls8450srk6a3kz6k1vwdvk3l8kd4dpcfczdzx8rfncb";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.0.2";
  };
  stringio = {
    groups = ["default" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1q92y9627yisykyscv0bdsrrgyaajc2qr56dwlzx7ysgigjv4z63";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.2.0";
  };
  syslog = {
    dependencies = ["logger"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "023lbh48fcn72gwyh1x52ycs1wx1bnhdajmv0qvkidmdsmxnxzjd";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.3.0";
  };
  thor = {
    groups = ["default" "development" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wsy88vg2mazl039392hqrcwvs5nb9kq8jhhrrclir2px1gybag3";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.5.0";
  };
  time = {
    dependencies = ["date"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1arxpii25xgb3fkgqp5acyc0x6179j3qzld78lflgsdxqfcf897k";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.4.2";
  };
  traces = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "05722prvh34n96irnxa762wz0yj2nyrz70ab2zby3b6snjf69wc0";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.18.2";
  };
  tsort = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "17q8h020dw73wjmql50lqw5ddsngg67jfw8ncjv476l5ys9sfl4n";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.2.0";
  };
  tzinfo = {
    dependencies = ["concurrent-ruby"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "16w2g84dzaf3z13gxyzlzbf748kylk5bdgg3n1ipvkvvqy685bwd";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.0.6";
  };
  unicode-display_width = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nkz7fadlrdbkf37m0x7sw8bnz8r355q3vwcfb9f9md6pds9h9qj";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.6.0";
  };
  uri = {
    groups = ["default" "release" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ijpbj7mdrq7rhpq2kb51yykhrs2s54wfs6sm9z3icgz4y6sb7rp";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.1";
  };
  voxpupuli-acceptance = {
    dependencies = ["bcrypt_pbkdf" "beaker" "beaker-docker" "beaker-hiera" "beaker-hostgenerator" "beaker-rspec" "beaker-vagrant" "beaker_puppet_helpers" "puppet-modulebuilder" "puppet_fixtures" "rake" "rspec-github" "serverspec" "winrm"];
    groups = ["system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ad9pq9kv9hdg0hxf2yzpqa197qaz6jz87wljrrh1r9iz7mb0p7q";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.4.0";
  };
  voxpupuli-puppet-lint-plugins = {
    dependencies = ["puppet-lint" "puppet-lint-absolute_classname-check" "puppet-lint-anchor-check" "puppet-lint-exec_idempotency-check" "puppet-lint-file_ensure-check" "puppet-lint-leading_zero-check" "puppet-lint-lookup_in_parameter-check" "puppet-lint-manifest_whitespace-check" "puppet-lint-optional_default-check" "puppet-lint-package_ensure-check" "puppet-lint-param-docs" "puppet-lint-param-types" "puppet-lint-params_empty_string-check" "puppet-lint-params_not_optional_with_undef-check" "puppet-lint-resource_reference_syntax" "puppet-lint-strict_indent-check" "puppet-lint-topscope-variable-check" "puppet-lint-trailing_comma-check" "puppet-lint-unquoted_string-check" "puppet-lint-variable_contains_upcase" "puppet-lint-version_comparison-check"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ggsdif6wm570iwdf06pp2wbx2pnca3n3w3c4kpjfgmxn33h7nb8";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.0.0";
  };
  voxpupuli-release = {
    dependencies = ["faraday-retry" "github_changelog_generator" "openvox-strings" "puppet-blacksmith" "rake" "syslog"];
    groups = ["release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0p9rdr2jpzblj36rskxv39lxb5ccmc09laxxfp0f20fvv1cj01b3";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.2.0";
  };
  voxpupuli-test = {
    dependencies = ["facterdb" "metadata-json-lint" "openvox-strings" "parallel_tests" "puppet-syntax" "puppet_fixtures" "rake" "rspec-github" "rspec-puppet" "rspec-puppet-facts" "rubocop" "rubocop-rake" "rubocop-rspec" "syslog" "voxpupuli-puppet-lint-plugins"];
    groups = ["test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xi2nwx34j3anyqipch85sbbasmrqma9hb3qh3gq733pd6ygmd9f";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "13.2.0";
  };
  winrm = {
    dependencies = ["builder" "erubi" "gssapi" "gyoku" "httpclient" "logging" "nori" "rexml" "rubyntlm"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01jxpshw5kx5ha21ymaaj14vibv5bvm0dd80ccc6xl3jaxy7cszg";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.3.9";
  };
  yard = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0a3zi3v7qjm7lm4yp9z2sm959533k543sc4z0ixqik8wcfdpw27b";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.9.44";
  };
}