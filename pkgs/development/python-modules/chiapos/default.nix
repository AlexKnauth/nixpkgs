{ lib
, substituteAll
, buildPythonPackage
, fetchPypi
, cmake
, cxxopts
, ghc_filesystem
, pybind11
, pytestCheckHook
, pythonOlder
, psutil
, setuptools-scm
}:

buildPythonPackage rec {
  pname = "chiapos";
  version = "1.0.6";
  disabled = pythonOlder "3.7";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-Zh5AULPgbG0oYPcBZMp/vm94MPyfdtYn4P5V+1LeMqA=";
  };

  patches = [
    # prevent CMake from trying to get libraries on the Internet
    (substituteAll {
      src = ./dont_fetch_dependencies.patch;
      inherit cxxopts ghc_filesystem;
      pybind11_src = pybind11.src;
    })
  ];

  nativeBuildInputs = [ cmake setuptools-scm ];

  buildInputs = [ pybind11 ];

  checkInputs = [
    psutil
    pytestCheckHook
  ];


  # CMake needs to be run by setuptools rather than by its hook
  dontConfigure = true;

  meta = with lib; {
    description = "Chia proof of space library";
    homepage = "https://www.chia.net/";
    license = licenses.asl20;
    maintainers = teams.chia.members;
  };
}
