{ pkgs ? import <nixpkgs> {}, promptCharacter ? "➜" }:

pkgs.stdenv.mkDerivation rec {
  name = "promptless";
  src = ./.;
  makeFlags = [ "PREFIX=$(out)" "CHAR=${promptCharacter}" ];
}
