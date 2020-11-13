{ callPackage, fetchFromGitHub, gambit-support }:

callPackage ./build.nix {
  version = "unstable-2021-12-20";
  git-version = "4.9.3-1610-gbec03a5e";
  stampYmd = 20211220;
  stampHms = 201129;
  src = fetchFromGitHub {
    owner = "feeley";
    repo = "gambit";
    rev = "bec03a5ea0992e6bd727001afc5220a26d468106";
    sha256 = "177ym2qcqfis3q2yvgl34xykwpdssf3gd752pzbcr5bfb1iggv8y";
  };
  gambit-params = gambit-support.unstable-params;
}
