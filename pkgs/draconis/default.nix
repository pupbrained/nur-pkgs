{ lib, fetchFromGitHub, rustPlatform, pkgconfig, dbus }:

rustPlatform.buildRustPackage rec {
  nativeBuildInputs = [
    pkgconfig
  ];

  buildInputs = [
    dbus
  ];

  pname = "draconis";
  version = "2.4.6";

  src = fetchFromGitHub {
    owner = "marsupialgutz";
    repo = "draconis";
    rev = "ae76d6616cf7e444930a126b7c41f0659dca7041";
    sha256 = "08imw94qj70apgdx5i2ss06r9dnmrmz5v1cfzzqrkny6wcfzk1hd";
  };

  cargoSha256 = "TtZx9fVZSH6FutBK6QhpKxNXuEa+6pE8cGMWmXat1ws=";

  meta = with lib; {
    description = "🪐 An out-of-this-world greeter for your terminal";
    homepage = "https://github.com/marsupialgutz/draconis";
    platforms = platforms.linux;
  };
}
