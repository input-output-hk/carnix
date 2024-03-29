# Generated by carnix 0.10.0: carnix generate-nix --src ./. --standalone
{ pkgs ? import <nixpkgs> {} }:
with pkgs;
with buildRustCrateHelpers;
let inherit (lib.lists) fold;
    inherit (lib.attrsets) recursiveUpdate;
  cratesIO = (callPackage ./crates-io.nix { });

  include = includedFiles: src: builtins.filterSource (path: type:
    lib.lists.any (f:
      let p = toString (src + ("/" + f)); in
      (path == p) || (type == "directory" && lib.strings.hasPrefix path p)
    ) includedFiles
  ) src;
in
rec {
  crates = cratesIO // rec {
# carnix-0.10.2

    crates.carnix."0.10.2" = deps: { features?(features_.carnix."0.10.2" deps {}) }: buildRustCrate {
      crateName = "carnix";
      version = "0.10.2";
      description = "Generate Nix expressions from Cargo.lock files (in order to use Nix as a build system for crates).";
      authors = [ "pe@pijul.org <pe@pijul.org>" ];
      src = include [ "Cargo.toml" "src/main.rs" "src/cargo-generate-nixfile.rs" "src/cache.rs" "src/cfg.rs" "src/krate.rs" "src/prefetch.rs" "src/preamble.nix" "src/output.rs" "src/error.rs" ] ./.;
      crateBin =
        [{  name = "cargo-generate-nixfile";  path = "src/cargo-generate-nixfile.rs"; }] ++
        [{  name = "carnix";  path = "src/main.rs"; }];
      dependencies = mapFeatures features ([
        (cratesIO.crates."clap"."${deps."carnix"."0.10.2"."clap"}" deps)
        (cratesIO.crates."dirs"."${deps."carnix"."0.10.2"."dirs"}" deps)
        (cratesIO.crates."env_logger"."${deps."carnix"."0.10.2"."env_logger"}" deps)
        (cratesIO.crates."failure"."${deps."carnix"."0.10.2"."failure"}" deps)
        (cratesIO.crates."failure_derive"."${deps."carnix"."0.10.2"."failure_derive"}" deps)
        (cratesIO.crates."itertools"."${deps."carnix"."0.10.2"."itertools"}" deps)
        (cratesIO.crates."log"."${deps."carnix"."0.10.2"."log"}" deps)
        (cratesIO.crates."nom"."${deps."carnix"."0.10.2"."nom"}" deps)
        (cratesIO.crates."regex"."${deps."carnix"."0.10.2"."regex"}" deps)
        (cratesIO.crates."serde"."${deps."carnix"."0.10.2"."serde"}" deps)
        (cratesIO.crates."serde_derive"."${deps."carnix"."0.10.2"."serde_derive"}" deps)
        (cratesIO.crates."serde_json"."${deps."carnix"."0.10.2"."serde_json"}" deps)
        (cratesIO.crates."tempdir"."${deps."carnix"."0.10.2"."tempdir"}" deps)
        (cratesIO.crates."toml"."${deps."carnix"."0.10.2"."toml"}" deps)
        (cratesIO.crates."url"."${deps."carnix"."0.10.2"."url"}" deps)
      ]);
    };
    features_.carnix."0.10.2" = deps: f: updateFeatures f (rec {
      carnix."0.10.2".default = (f.carnix."0.10.2".default or true);
      clap."${deps.carnix."0.10.2".clap}".default = true;
      dirs."${deps.carnix."0.10.2".dirs}".default = true;
      env_logger."${deps.carnix."0.10.2".env_logger}".default = true;
      failure."${deps.carnix."0.10.2".failure}".default = true;
      failure_derive."${deps.carnix."0.10.2".failure_derive}".default = true;
      itertools."${deps.carnix."0.10.2".itertools}".default = true;
      log."${deps.carnix."0.10.2".log}".default = true;
      nom."${deps.carnix."0.10.2".nom}".default = true;
      regex."${deps.carnix."0.10.2".regex}".default = true;
      serde."${deps.carnix."0.10.2".serde}".default = true;
      serde_derive."${deps.carnix."0.10.2".serde_derive}".default = true;
      serde_json."${deps.carnix."0.10.2".serde_json}".default = true;
      tempdir."${deps.carnix."0.10.2".tempdir}".default = true;
      toml."${deps.carnix."0.10.2".toml}".default = true;
      url."${deps.carnix."0.10.2".url}".default = true;
    }) [
      (cratesIO.features_.clap."${deps."carnix"."0.10.2"."clap"}" deps)
      (cratesIO.features_.dirs."${deps."carnix"."0.10.2"."dirs"}" deps)
      (cratesIO.features_.env_logger."${deps."carnix"."0.10.2"."env_logger"}" deps)
      (cratesIO.features_.failure."${deps."carnix"."0.10.2"."failure"}" deps)
      (cratesIO.features_.failure_derive."${deps."carnix"."0.10.2"."failure_derive"}" deps)
      (cratesIO.features_.itertools."${deps."carnix"."0.10.2"."itertools"}" deps)
      (cratesIO.features_.log."${deps."carnix"."0.10.2"."log"}" deps)
      (cratesIO.features_.nom."${deps."carnix"."0.10.2"."nom"}" deps)
      (cratesIO.features_.regex."${deps."carnix"."0.10.2"."regex"}" deps)
      (cratesIO.features_.serde."${deps."carnix"."0.10.2"."serde"}" deps)
      (cratesIO.features_.serde_derive."${deps."carnix"."0.10.2"."serde_derive"}" deps)
      (cratesIO.features_.serde_json."${deps."carnix"."0.10.2"."serde_json"}" deps)
      (cratesIO.features_.tempdir."${deps."carnix"."0.10.2"."tempdir"}" deps)
      (cratesIO.features_.toml."${deps."carnix"."0.10.2"."toml"}" deps)
      (cratesIO.features_.url."${deps."carnix"."0.10.2"."url"}" deps)
    ];


# end

  };

  carnix = crates.crates.carnix."0.10.2" deps;
  __all = [ (carnix {}) ];
  deps.aho_corasick."0.7.4" = {
    memchr = "2.2.1";
  };
  deps.ansi_term."0.11.0" = {
    winapi = "0.3.7";
  };
  deps.argon2rs."0.2.5" = {
    blake2_rfc = "0.2.18";
    scoped_threadpool = "0.1.9";
  };
  deps.arrayvec."0.4.11" = {
    nodrop = "0.1.13";
  };
  deps.atty."0.2.11" = {
    termion = "1.5.3";
    libc = "0.2.59";
    winapi = "0.3.7";
  };
  deps.backtrace."0.3.32" = {
    backtrace_sys = "0.1.30";
    cfg_if = "0.1.9";
    libc = "0.2.59";
    rustc_demangle = "0.1.15";
  };
  deps.backtrace_sys."0.1.30" = {
    libc = "0.2.59";
    cc = "1.0.37";
  };
  deps.bitflags."1.1.0" = {};
  deps.blake2_rfc."0.2.18" = {
    arrayvec = "0.4.11";
    constant_time_eq = "0.1.3";
  };
  deps.carnix."0.10.2" = {
    clap = "2.33.0";
    dirs = "1.0.5";
    env_logger = "0.6.2";
    failure = "0.1.5";
    failure_derive = "0.1.5";
    itertools = "0.8.0";
    log = "0.4.7";
    nom = "3.2.1";
    regex = "1.1.9";
    serde = "1.0.94";
    serde_derive = "1.0.94";
    serde_json = "1.0.40";
    tempdir = "0.3.7";
    toml = "0.5.1";
    url = "1.7.2";
  };
  deps.cc."1.0.37" = {};
  deps.cfg_if."0.1.9" = {};
  deps.clap."2.33.0" = {
    atty = "0.2.11";
    bitflags = "1.1.0";
    strsim = "0.8.0";
    textwrap = "0.11.0";
    unicode_width = "0.1.5";
    vec_map = "0.8.1";
    ansi_term = "0.11.0";
  };
  deps.cloudabi."0.0.3" = {
    bitflags = "1.1.0";
  };
  deps.constant_time_eq."0.1.3" = {};
  deps.dirs."1.0.5" = {
    redox_users = "0.3.0";
    libc = "0.2.59";
    winapi = "0.3.7";
  };
  deps.either."1.5.2" = {};
  deps.env_logger."0.6.2" = {
    atty = "0.2.11";
    humantime = "1.2.0";
    log = "0.4.7";
    regex = "1.1.9";
    termcolor = "1.0.5";
  };
  deps.failure."0.1.5" = {
    backtrace = "0.3.32";
    failure_derive = "0.1.5";
  };
  deps.failure_derive."0.1.5" = {
    proc_macro2 = "0.4.30";
    quote = "0.6.12";
    syn = "0.15.39";
    synstructure = "0.10.2";
  };
  deps.fuchsia_cprng."0.1.1" = {};
  deps.humantime."1.2.0" = {
    quick_error = "1.2.2";
  };
  deps.idna."0.1.5" = {
    matches = "0.1.8";
    unicode_bidi = "0.3.4";
    unicode_normalization = "0.1.8";
  };
  deps.itertools."0.8.0" = {
    either = "1.5.2";
  };
  deps.itoa."0.4.4" = {};
  deps.lazy_static."1.3.0" = {};
  deps.libc."0.2.59" = {};
  deps.log."0.4.7" = {
    cfg_if = "0.1.9";
  };
  deps.matches."0.1.8" = {};
  deps.memchr."1.0.2" = {
    libc = "0.2.59";
  };
  deps.memchr."2.2.1" = {};
  deps.nodrop."0.1.13" = {};
  deps.nom."3.2.1" = {
    memchr = "1.0.2";
  };
  deps.numtoa."0.1.0" = {};
  deps.percent_encoding."1.0.1" = {};
  deps.proc_macro2."0.4.30" = {
    unicode_xid = "0.1.0";
  };
  deps.quick_error."1.2.2" = {};
  deps.quote."0.6.12" = {
    proc_macro2 = "0.4.30";
  };
  deps.rand."0.4.6" = {
    rand_core = "0.3.1";
    rdrand = "0.4.0";
    fuchsia_cprng = "0.1.1";
    libc = "0.2.59";
    winapi = "0.3.7";
  };
  deps.rand_core."0.3.1" = {
    rand_core = "0.4.0";
  };
  deps.rand_core."0.4.0" = {};
  deps.rand_os."0.1.3" = {
    rand_core = "0.4.0";
    rdrand = "0.4.0";
    cloudabi = "0.0.3";
    fuchsia_cprng = "0.1.1";
    libc = "0.2.59";
    winapi = "0.3.7";
  };
  deps.rdrand."0.4.0" = {
    rand_core = "0.3.1";
  };
  deps.redox_syscall."0.1.56" = {};
  deps.redox_termios."0.1.1" = {
    redox_syscall = "0.1.56";
  };
  deps.redox_users."0.3.0" = {
    argon2rs = "0.2.5";
    failure = "0.1.5";
    rand_os = "0.1.3";
    redox_syscall = "0.1.56";
  };
  deps.regex."1.1.9" = {
    aho_corasick = "0.7.4";
    memchr = "2.2.1";
    regex_syntax = "0.6.8";
    thread_local = "0.3.6";
    utf8_ranges = "1.0.3";
  };
  deps.regex_syntax."0.6.8" = {
    ucd_util = "0.1.3";
  };
  deps.remove_dir_all."0.5.2" = {
    winapi = "0.3.7";
  };
  deps.rustc_demangle."0.1.15" = {};
  deps.ryu."1.0.0" = {};
  deps.scoped_threadpool."0.1.9" = {};
  deps.serde."1.0.94" = {};
  deps.serde_derive."1.0.94" = {
    proc_macro2 = "0.4.30";
    quote = "0.6.12";
    syn = "0.15.39";
  };
  deps.serde_json."1.0.40" = {
    itoa = "0.4.4";
    ryu = "1.0.0";
    serde = "1.0.94";
  };
  deps.smallvec."0.6.10" = {};
  deps.strsim."0.8.0" = {};
  deps.syn."0.15.39" = {
    proc_macro2 = "0.4.30";
    quote = "0.6.12";
    unicode_xid = "0.1.0";
  };
  deps.synstructure."0.10.2" = {
    proc_macro2 = "0.4.30";
    quote = "0.6.12";
    syn = "0.15.39";
    unicode_xid = "0.1.0";
  };
  deps.tempdir."0.3.7" = {
    rand = "0.4.6";
    remove_dir_all = "0.5.2";
  };
  deps.termcolor."1.0.5" = {
    wincolor = "1.0.1";
  };
  deps.termion."1.5.3" = {
    numtoa = "0.1.0";
    libc = "0.2.59";
    redox_syscall = "0.1.56";
    redox_termios = "0.1.1";
  };
  deps.textwrap."0.11.0" = {
    unicode_width = "0.1.5";
  };
  deps.thread_local."0.3.6" = {
    lazy_static = "1.3.0";
  };
  deps.toml."0.5.1" = {
    serde = "1.0.94";
  };
  deps.ucd_util."0.1.3" = {};
  deps.unicode_bidi."0.3.4" = {
    matches = "0.1.8";
  };
  deps.unicode_normalization."0.1.8" = {
    smallvec = "0.6.10";
  };
  deps.unicode_width."0.1.5" = {};
  deps.unicode_xid."0.1.0" = {};
  deps.url."1.7.2" = {
    idna = "0.1.5";
    matches = "0.1.8";
    percent_encoding = "1.0.1";
  };
  deps.utf8_ranges."1.0.3" = {};
  deps.vec_map."0.8.1" = {};
  deps.winapi."0.3.7" = {
    winapi_i686_pc_windows_gnu = "0.4.0";
    winapi_x86_64_pc_windows_gnu = "0.4.0";
  };
  deps.winapi_i686_pc_windows_gnu."0.4.0" = {};
  deps.winapi_util."0.1.2" = {
    winapi = "0.3.7";
  };
  deps.winapi_x86_64_pc_windows_gnu."0.4.0" = {};
  deps.wincolor."1.0.1" = {
    winapi = "0.3.7";
    winapi_util = "0.1.2";
  };
}
