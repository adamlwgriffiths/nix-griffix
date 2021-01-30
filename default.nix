{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };

  callPackage = pkgs.lib.callPackageWith (pkgs // self);

  self = {
    raylib = callPackage ./pkgs/development/libraries/raylib { };
    obs-studio = pkgs.obs-studio;
  };
in self
