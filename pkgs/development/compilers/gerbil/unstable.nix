{ callPackage, fetchFromGitHub, gambit-unstable, gambit-support }:

callPackage ./build.nix rec {
  version = "unstable-2021-12-20";
  git-version = "0.16-267-g32e5bbf6";
  src = fetchFromGitHub {
    owner = "vyzo";
    repo = "gerbil";
    rev = "32e5bbf694b5954075f056969214afc39ca844f4";
    sha256 = "165l83ss7v9gjg5agbg9xsimzkyqb4wcvsi1qsjzjvavm9b329yh";
  };
  inherit gambit-support;
  gambit = gambit-unstable;
  gambit-params = gambit-support.unstable-params;
}
