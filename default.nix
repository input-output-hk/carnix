{ pkgs ? import <nixpkgs> {} }:

(pkgs.callPackages ./Cargo.nix {}).__all
