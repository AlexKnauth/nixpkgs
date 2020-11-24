{ lib, fetchFromGitHub, ... }:

{
  pname = "gerbil-utils";
  version = "unstable-2022-01-31";
  git-version = "0.2-170-gab37774";
  softwareName = "Gerbil-utils";
  gerbil-package = "clan";
  version-path = "version";

  pre-src = {
    fun = fetchFromGitHub;
    owner = "fare";
    repo = "gerbil-utils";
    rev = "ab37774a949d4fadb96f18079275a0815c25adf5";
    sha256 = "067iwnwiy3rndkm4qsm60b15akmcjisrrk440q7pp8kww1083xkv";
  };

  meta = with lib; {
    description = "Gerbil Clan: Community curated Collection of Common Utilities";
    homepage    = "https://github.com/fare/gerbil-utils";
    license     = licenses.lgpl21;
    platforms   = platforms.unix;
    maintainers = with maintainers; [ fare ];
  };
}
