{ callPackage, fetchFromGitHub, gambit-support }:

callPackage ./build.nix {
  version = "unstable-2022-01-20";
  git-version = "4.9.4-6-ga21c41ab";
  stampYmd = 20220120;
  stampHms = 190105;
  src = fetchFromGitHub {
    owner = "gambit";
    repo = "gambit";
    rev = "a21c41ab9e8abb02d7c4126a845e11356cce08c0";
    sha256 = "17cd59byvxqmp4qc3xdb2jfqqj09a037b36hp6mp66y2j2rkb2vi";
  };
  gambit-params = gambit-support.unstable-params;
}
