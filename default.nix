with import <nixpkgs> {
   overlays = [ (import /home/pe/nixpkgs-mozilla/rust-overlay.nix) ];
};
stdenv.mkDerivation {
  name = "carnix";
  buildInputs = [ rustChannels.stable.rust ];
}
