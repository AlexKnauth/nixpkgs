{ callPackage, fetchFromGitHub, gambit-support }:

callPackage ./build.nix {
  version = "unstable-2022-03-01";
  git-version = "4.9.4-24-g8f2c029d";
  stampYmd = 20220301;
  stampHms = 232321;
  src = fetchFromGitHub {
    owner = "gambit";
    repo = "gambit";
    rev = "8f2c029d02a307f33cb3d6bfc6a181cf9a5066a0";
    sha256 = "0jn9vy3gm6gb1zjav6i2safh3fycmk1svw99qlx6068p4g9jgygb";
  };
  gambit-params = gambit-support.unstable-params;
}
