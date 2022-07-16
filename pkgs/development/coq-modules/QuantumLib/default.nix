{ lib, mkCoqDerivation, which, autoconf,
  coq, ssreflect, version ? null }:

with lib; mkCoqDerivation {
  pname = "QuantumLib";
  owner = "inQWIRE";
  domain = "github.com";
  inherit version;
  defaultVersion = with versions; switch coq.coq-version [
    { case = range "8.12" "8.15";  out = "1.0.0"; }
  ] null;
  release."1.0.0".sha256 = "sha256-7/JkS79yVJxlFNoyH40ls6STt61KET0O+Wnl92Fb+5U=";
  releaseRev = v: "v${v}";
  useDune2 = true;
  opam-name = "coq-quantumlib";

  meta = {
    homepage = "https://github.com/inQWIRE/QuantumLib";
    description = "Coq library for reasoning about quantum programs";
    license = licenses.lgpl3;
  };
}
