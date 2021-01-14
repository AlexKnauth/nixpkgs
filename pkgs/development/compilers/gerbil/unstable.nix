{ callPackage, fetchFromGitHub, gambit-unstable, gambit-support }:

callPackage ./build.nix rec {
  version = "unstable-2022-01-18";
  git-version = "0.17.0-14-g3fd925f4";
  src = fetchFromGitHub {
    owner = "vyzo";
    repo = "gerbil";
    rev = "3fd925f4f12749359c7c0aadf88e57531bb27f39";
    sha256 = "11m7bgbli1773mks2qvi17sdpjyypkhjkvs1s0sl0m73rgf3202m";
  };
  inherit gambit-support;
  gambit = gambit-unstable;
  gambit-params = gambit-support.unstable-params;
}
