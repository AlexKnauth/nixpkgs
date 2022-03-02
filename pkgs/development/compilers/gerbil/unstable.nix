{ callPackage, fetchFromGitHub, gambit-unstable, gambit-support }:

callPackage ./build.nix rec {
  version = "unstable-2022-02-26";
  git-version = "0.17.0-24-gee14c66f";
  src = fetchFromGitHub {
    owner = "vyzo";
    repo = "gerbil";
    rev = "ee14c66ff685366ab6c0ea8217e4430f9bec76d6";
    sha256 = "04lks3ksavblmwllcl6cf1gx88n4y1zlrdsqlfilz03kgxf360n4";
  };
  inherit gambit-support;
  gambit = gambit-unstable;
  gambit-params = gambit-support.unstable-params;
}
