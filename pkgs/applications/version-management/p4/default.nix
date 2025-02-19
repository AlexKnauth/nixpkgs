{ stdenv, fetchurl, lib, autoPatchelfHook }:

stdenv.mkDerivation rec {
  pname = "p4";
  version = "2021.2.2201121";

  src = fetchurl {
    # actually  https://cdist2.perforce.com/perforce/r21.2/bin.linux26x86_64/helix-core-server.tgz but upstream deletes releases
    url = "http://web.archive.org/web/20211118024943/https://cdist2.perforce.com/perforce/r21.2/bin.linux26x86_64/helix-core-server.tgz";
    sha256 = "sha256-cmIMVek4lwVYJQbW8ziABftPZ0iIoAoSpR7cKuN4I7M=";
  };

  sourceRoot = ".";

  dontBuild = true;

  nativeBuildInputs = [ autoPatchelfHook ];

  installPhase = ''
    install -D --target $out/bin p4 p4broker p4d p4p
  '';

  meta = {
    description = "Perforce Command-Line Client";
    homepage = "https://www.perforce.com";
    license = lib.licenses.unfree;
    platforms = [ "x86_64-linux" ];
    maintainers = with lib.maintainers; [ corngood ];
  };
}
