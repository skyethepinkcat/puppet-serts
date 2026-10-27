{
  activesupport = {
    dependencies = ["base64" "bigdecimal" "concurrent-ruby" "connection_pool" "drb" "i18n" "json" "logger" "minitest" "securerandom" "tzinfo" "uri"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1pw09rmd9f9x0i0ai11ajcf6c7xvi48pn8sbjf8q7z648gzd67c9";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "8.1.4";
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
    dependencies = ["console" "fiber-annotation" "io-event"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "02s99xxqgy7arxnfh19irk55is4mr4g4aik36ybsjqxz7mrq9y9l";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.46.0";
  };
  async-http = {
    dependencies = ["async" "async-pool" "io-endpoint" "io-stream" "protocol-http" "protocol-http1" "protocol-http2" "protocol-url"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0slh4q4blfifw7smyahrp8c5623p3pass2ifpigvwqfgsmlij6am";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.105.0";
  };
  async-http-faraday = {
    dependencies = ["async-http" "faraday"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1sr7wc0a7dzs68p3jn5ysnvy2sa2jqjb9l3bkgilwy69345za2zb";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.24.0";
  };
  async-pool = {
    dependencies = ["async"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01l5yna12l7qcmwmr0mvkkj241qh0w9vzl1fmd6p1g94q0ylk02m";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.12.0";
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
      sha256 = "0n2vdq3ld5lfdcgrimfvvjrr92sdn57mg0ayp6narbhvmi7mj1ag";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.8.3";
  };
  beaker-docker = {
    dependencies = ["beaker" "docker-api" "excon" "stringify-hash"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0j8nsn4l5k3m5w5bms5hgx556rmpyqwhr8y5gg2n57jgwizyxnmn";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.1.3";
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
      sha256 = "0s5ii2hz5aqicxxb3c9hyn526hp58kk8156c35k607fslx98jrsl";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.8.0";
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
      sha256 = "0rng45p4vc3f6nac44cnylwch7rj4zsff3icdz6c7garwpjy3sv1";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.1.3";
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
      sha256 = "1qfi2ns3zwkgq616fc127xiqhan7g7m7gqpwriwcr34nds1vxwdj";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.3.8";
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
      sha256 = "1pnm9bs24jdbhsd8wjif37y8hfcbki9rwbc3dfzfk58f2dcjzf1m";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.38.0";
  };
  date = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "105m4y6iwannk0vmn43px6rh8mlczp1bispq6hsxksr49rf99b0q";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.6.0";
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
    dependencies = ["base64" "excon"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xp3ycxbi6jz84ifzfs8kp6f2m4021nbmz8lamp1b606sm36cfwx";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.5.0";
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
      sha256 = "14pfj6zn0p1hxj6s6s0r7d424wap8zl9zxf89nj79y8fbg16vjn5";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.0.7";
  };
  excon = {
    dependencies = ["logger"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14qwz5qsrnzcf1xkc05gkjjbih1g19lx82l0vnavya7zkd8i9m2n";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.8.0";
  };
  facterdb = {
    dependencies = ["jgrep"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wniv1simkysmq6d32h684yk8rfv71ywvidzaa926ivnkgarm9vd";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.5.0";
  };
  faraday = {
    dependencies = ["faraday-net_http" "json" "logger"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "13r8mjqk8slscc8rxfhfrqglks131sb78ay4dklcafd7xm6ia247";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.15.1";
  };
  faraday-http-cache = {
    dependencies = ["faraday"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "153r3jcpmn1nnd99gj4gyplq7kx1np7b1za6jjjhmf15312bbq24";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  faraday-net_http = {
    dependencies = ["net-http"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0difl8kbbhz1pirq8prpv42p0rgqfrrz8gfc93h4wx9q9v1r8w1f";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.5.0";
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
      sha256 = "1hs4a6kvl2jbqayi1bfj34kipdyy7wdbysap8rvlm40qlpjg2ijh";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.2.0";
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
      sha256 = "0kcdb77gq5g8jxfky9mjcv7vj408549h76kkf4pryrhrav9p819d";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.20.2";
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
  hana = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "03cvrv2wl25j9n4n509hjvqnmwa60k92j741b64a1zjisr1dn9al";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.3.7";
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
      sha256 = "1dfikmmd9dllirsfq0kjiyxpmlq0afkxm5sslsr97r9g85ifpy80";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.15.2";
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
      sha256 = "1cgvhm0d4awr8j42b8v1nl1jfgx45ihv8mylargfi3lj697k00x4";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.9.4";
  };
  io-endpoint = {
    dependencies = ["openssl"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0y55bjpd4wfcykyp0vshvbgyp5838qdndxzr4pz5gg3qkbzawyjl";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.19.0";
  };
  io-event = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1nvariizl8azl0j7x30q77qas17wa23qkq71krl6plwbi52g24hv";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.22.3";
  };
  io-stream = {
    dependencies = ["openssl"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1kgim30xjghz4z6047nkc5sy8casmmlqvzqzfsycnv06l8zb3n87";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.14.0";
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
      sha256 = "0ywji1azqqx3aqwhn5p43v7y0703wm3x9naqmxq8jpml9qwpvf33";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.6.0";
  };
  json = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0shwgjqbj856mb6m9kgkpy08nhym2gdvc2yaprlimfmky9y3n78z";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.21.2";
  };
  json-schema = {
    dependencies = ["addressable" "bigdecimal"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1wxxilfijidxfsv51smfbbif3cgf1fardc4z2pyqnd3jsw9n3gy0";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.2.1";
  };
  json_schemer = {
    dependencies = ["bigdecimal" "hana" "regexp_parser" "simpleidn"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15p31bq932bfpsi1wgrkgwm71l7z1h1w53q6vl44w6kjrr6gn09g";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.5.0";
  };
  language_server-protocol = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1w5p8c2145lmqzr25bxh4ikzjm6k8y1k5lriqqdpw9pq730w1wjy";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.17.0.6";
  };
  lint_roller = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "11yc0d84hsnlvx8cpk4cbj6a4dz9pk0r1k29p0n1fz9acddq831c";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.0";
  };
  listen = {
    dependencies = ["logger" "rb-fsevent" "rb-inotify"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0g3q0hnxnskhlchlyghxdc5dk41pzxr27pd4gms4iwspas2k4gsc";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.10.1";
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
  mcp = {
    dependencies = ["json_schemer"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "162xg5yzwbrd335dmfkcjxk4fl5chpmwb2lvbmpgvdk07dgkmkwa";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.25.0";
  };
  metadata-json-lint = {
    dependencies = ["json-schema" "semantic_puppet" "spdx-licenses"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1n12d0j1n8g4nldvqlmxc5zrx9ai1hhpr9b0gz4cmkwsicnx26y1";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.1.0";
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
      sha256 = "13pabgwf4qd5qn4sl7ci15g5ql038n5z0psip9xabnsbypm32m94";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.21.2";
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
    dependencies = ["net-protocol" "uri"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "09vwk1kab811q2qyk9yh9imc6naz22zzfarzqirljwh5gbizcbqs";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.10.0";
  };
  net-protocol = {
    dependencies = ["timeout"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ly8x39gr23blbmfwfyy14lb2v9kg8bj5x0b2r2llyb4dy60rygr";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.4.0";
  };
  net-scp = {
    dependencies = ["net-ssh"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zr8x4mgq1ap6h85myyvdcamsn43nhhpyyfjpqqqdk7nxzjss36z";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.1.3";
  };
  net-ssh = {
    dependencies = ["logger"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "17zf9gz9qdsb9nwqrb76nwlxyi45iswxva7frpg819frqk61zfqn";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.3.8";
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
      sha256 = "02s7fjrdf0hxz63gvb7xndd08y6jr2psflbwpwpy0jhrzb0vgpqp";
      target = "x86_64-linux-musl";
      targetCPU = "x86_64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "09rmsqfzkipxi4zyp0wm54xcynni2ww9bipb6rxmkrl66a2vjvd4";
      target = "arm64-darwin";
      targetCPU = "arm64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0l85yw2c4iwhb7cpwfr3xyjx9lwmcpbkqjx7ajchxw71sdbp1lbz";
      target = "x86_64-darwin";
      targetCPU = "x86_64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0sm0h74pnjfxl1y2mzdy5wmysrc4rwnwwlnp34zmx4981d2ax7rp";
      target = "x86_64-linux-gnu";
      targetCPU = "x86_64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "13qsqdvwdnykaja86ks2lwyb828j5dv5rpakg82hbr3d99jgns8j";
      target = "aarch64-linux-gnu";
      targetCPU = "aarch64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1bq1vl7nkmjbd0wr3ddrq4cdq6ahj5kp1gmx0wrb0frbwyf5piim";
      target = "aarch64-linux-musl";
      targetCPU = "aarch64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1jj0adrs9wmbx4lxxsxcz9pgnmkgrm5p6ycy4dl5s1mv70z320d3";
      target = "arm-linux-gnu";
      targetCPU = "arm";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1sqifdjfbxk8qi7lf8kz7qr791jrbg94gliljy37iymw070j72aq";
      target = "arm-linux-musl";
      targetCPU = "arm";
      targetOS = "linux";
      type = "gem";
    }];
    version = "1.19.4";
  };
  nori = {
    dependencies = ["bigdecimal" "stringio"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01p6ns6fxrjba8q8yj624pjqmh0wmgcf9hk64k1n4gyb1i115pbj";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.9.1";
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
      sha256 = "1ldxwz90kq5vpxmfak8bfvqnbrcs4q2k4y250yaim76f4psq5ikp";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.2.1";
  };
  openssl = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1hj7wwp4r3jhvnyd8ik85wbs25cq1w61r28pv6ddyn5fd0lasdqh";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.0.2";
  };
  openvox = {
    dependencies = ["base64" "benchmark" "concurrent-ruby" "deep_merge" "fast_gettext" "fiddle" "getoptlong" "locale" "openfact" "ostruct" "puppet-resource_api" "racc" "scanf" "semantic_puppet"];
    groups = ["release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "06c82g8h2zyn8wr00cyh9qrdzmkih50ica17xj6r3zmckb19rj4c";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "8.31.1";
  };
  openvox-strings = {
    dependencies = ["irb" "rgen" "yard"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0dh1z3nczm3rsmj9sphgadz9ccds3a4r89lvmpfs9xjrwh49f0v7";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.2.0";
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
      sha256 = "0d596lg514b19fxdg2q7qq8ni5sd5549s7rqpqwr8jpdlfcx4pki";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.73.0";
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
      sha256 = "1nhyv4lxjcamkdzgr6v04h9l4akrgz933kklc9wiryrgxv5rh60q";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.8.0";
  };
  parser = {
    dependencies = ["ast" "racc"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1jnyqgbbzglgk1fzfr1rcqxi3jxki7gs8av9iz3b01gyq9irnbz0";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.3.13.0";
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
      sha256 = "0w5mha75hs8gdj75g8vl0sxpyp8rzvwq8a4jcmi4ah8cf370zjyz";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.6.4";
  };
  prettyprint = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1m5pqkp8rdk0bkxxz3bp3vn8pn3bd9a97dkl8wfh1kyplrzdamfm";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.2.1";
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
      sha256 = "1wvn501vwqdax5z42p75fc3mbmk2pdvlj85zj0kbqpnlnn7p23av";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.72.1";
  };
  protocol-http1 = {
    dependencies = ["protocol-http"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ahgch4sqvykv9sx62mbgwz1bzsqkf0qqmhqhmag0l4yixj11cn2";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.41.1";
  };
  protocol-http2 = {
    dependencies = ["protocol-hpack" "protocol-http"];
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1rm8rhq3z28s352n4727zhh8csmcwfhmis03b58vjj0x8zidv7f5";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.29.2";
  };
  protocol-url = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08gvmgx5jqprix14ywznml39bkaxd3cvn3v1nfh5k8j2lxm9ysrz";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.19.0";
  };
  pry = {
    dependencies = ["coderay" "method_source" "reline"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1k5ck0mfd3mkmg7d7vi2x9z53spmbhnqkln6xr5w6bbzdv484bfr";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.16.1";
  };
  pstore = {
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0agqg0p9ipg3hkxjmsyz4j8lmjn53z8f3rfxhwsrpff8rmbqv24p";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.3.0";
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
      sha256 = "0cqafmvcnd76rn2qia4zcfi2jxw3ll2vbyvwhqa47qsx192n8g3c";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.0.1";
  };
  puppet-syntax = {
    dependencies = ["openvox" "rake"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1hqakybig7m2145lifj80r56igz6n3xf5cql2zbijp133kgr1s5w";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.3.0";
  };
  puppet_fixtures = {
    dependencies = ["logger" "rake"];
    groups = ["default" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0vr5aa8fqyrh82nyl832081h9g32x1jf81dx2kjn2gqadsn7c4ip";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.2.3";
  };
  puppet_metadata = {
    dependencies = ["metadata-json-lint" "semantic_puppet"];
    groups = ["test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wd5v7dqkl3zdp1dwfbmq5pgl65n9j31x9kmsv91jfwa6i1w73hk";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.4.0";
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
  rbs = {
    dependencies = ["logger" "prism" "tsort"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0x067q8cdam4kv5dc09iq2nzca8qm2kdl0dr22gc0ny0vj3bixsi";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.2.0";
  };
  rdoc = {
    dependencies = ["erb" "prism" "rbs" "tsort"];
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "02pn63i2r5z44hcfhxbaag9rvqsyznsliivnn7f3dzaw1a43gz5y";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "8.1.0";
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
      sha256 = "0jxl6c5cagjz5i5n9jplhdy2izad6wapmwgfhqggb22nqfvvdvas";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.13.1";
  };
  reline = {
    dependencies = ["io-console"];
    groups = ["default" "development" "release" "system_tests" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gaq2lc463ap1srz7y5kh2p4dxazs7vjrpiby58d9yfvan72s0av";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.7.0";
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
      sha256 = "060ag91w7dqnf8ybf3bx7r23ida6f76qgmwbil3i3bppb6l8zfg4";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.3.1";
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
    dependencies = ["json" "language_server-protocol" "lint_roller" "mcp" "parallel" "parser" "rainbow" "regexp_parser" "rubocop-ast" "ruby-progressbar" "unicode-display_width"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xyc0rs1xaiqln7x611v0f3kjpna7n8h6apbxrvc795sc7lzkg1x";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.85.1";
  };
  rubocop-ast = {
    dependencies = ["parser" "prism"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1nw84xk6vc2ls8sxqvyhxs2agh4l0jrws85d4bi3x0501lq8ijmr";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.50.0";
  };
  rubocop-rake = {
    dependencies = ["lint_roller" "rubocop"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0kdfrckz1v32dy7c7bdiksjysx9l9zsda9kc6zvrsghch6vg55rp";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.7.1";
  };
  rubocop-rspec = {
    dependencies = ["lint_roller" "rubocop"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qjmvcpk6qwxjdh3w5smr2n7c1glxsdzpv5fi7bkg0j034v0m9wg";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.9.0";
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
      sha256 = "1md07jjlpw2ifywa509iffl7lhj03yj1vr6k410dnh5fzigs8jh5";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.6.8";
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
  simpleidn = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00sdym5q3d9zg7lv47mjamzv67z1lfyd3gz9256v0g9gxl5p7jhj";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.3.0";
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
      sha256 = "0a4mp2zvw7rrg5y13jr8hdarwggn0n0bb8clwc037m0kp4x3nxz3";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.95.2";
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
      sha256 = "0wklh86rhpiff34ja0hda5pwdfywybjvb50hqhz90wpyhblqmhy4";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.4.0";
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
      sha256 = "03v5s7l10n982lrlpfsga5600qkq9crsnvszz4kjg39ygj501smb";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.5.0";
  };
  timeout = {
    groups = ["default" "release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1jxcji88mh6xsqz0mfzwnxczpg7cyniph7wpavnavfz7lxl77xbq";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.6.1";
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
    dependencies = ["unicode-emoji"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04xnl0zwpjjvxipd6rdnxkm11pfhbhhi3179yzv51nqi9dmacyjb";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.3.0";
  };
  unicode-emoji = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1kp89lja8ii7l6f0bq5vdxq1p3kxr3a2qmmhdc38qdwh6akjzh0i";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.3.0";
  };
  uri = {
    groups = ["default" "release" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1yv9n69g99wldlx04q3my61jy5cf75z5xvd0n1465vxvxac2wac9";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.2";
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
    dependencies = ["faraday-retry" "github_changelog_generator" "openvox" "openvox-strings" "puppet-blacksmith" "rake" "syslog"];
    groups = ["release"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0mi388zsxmdy6kczdzn80dbsfyn934v3yvyx7lzaf9p7v5kr0lri";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.5.0";
  };
  voxpupuli-test = {
    dependencies = ["facterdb" "metadata-json-lint" "openvox-strings" "parallel_tests" "puppet-syntax" "puppet_fixtures" "rake" "rspec-github" "rspec-puppet" "rspec-puppet-facts" "rubocop" "rubocop-rake" "rubocop-rspec" "syslog" "voxpupuli-puppet-lint-plugins"];
    groups = ["test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14vyxv8rwyhmmznfq507lrbkfmz8053kzppd28asljc9h981w5ai";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "14.0.0";
  };
  winrm = {
    dependencies = ["base64" "builder" "gssapi" "gyoku" "httpclient" "logger" "nori" "rexml" "rubyntlm"];
    groups = ["default" "system_tests"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1jmbg0f7qhc555af5k7ni5l75zqb1djgb2ki4dxhj574p5y3glqx";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.4.2";
  };
  yard = {
    groups = ["default" "release" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0lfwngmsz3xq9k9la9890cqpm4vk3rda4171yzms7f3w7x4i3qjj";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.9.45";
  };
}