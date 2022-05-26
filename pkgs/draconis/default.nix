{ lib, fetchFromGitHub, rustPlatform, pkgconfig, dbus }:

rustPlatform.buildRustPackage rec {
  nativeBuildInputs = [
    pkgconfig
  ];

  buildInputs = [
    dbus
  ];

  pname = "draconis";
  version = "2.4.4";

  src = fetchFromGitHub {
    owner = "marsupialgutz";
    repo = "draconis";
    rev = "035ef1db0d4226f6d553fa96c3014b53430f97ef";
    sha256 = "0ph84jlf4x1k30rhyl120f74jh7bfpmyk2pvzkfnr4bz3q2cdwwn";
  };

  cargoSha256 = "pxziVskRcTuQPJ9R5hLJq/RwBE+w8m9ENOs/ZKhxQLw=";

  meta = with lib; {
    description = "🪐 An out-of-this-world greeter for your terminal";
    homepage = "https://github.com/marsupialgutz/draconis";
    platforms = platforms.linux;
  };
}
