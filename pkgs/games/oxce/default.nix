{lib, stdenv, fetchFromGitHub, cmake, libGLU, libGL, zlib, openssl, libyamlcpp, boost
, SDL, SDL_image, SDL_mixer, SDL_gfx }:

let version = "1.0.0.2019.10.18"; in
stdenv.mkDerivation {
  pname = "oxce";
  inherit version;
  src = fetchFromGitHub {
    owner = "MeridianOXC";
    repo = "OpenXcom";
    rev = "b46aa7ba86c9010550cdc7e8fd774da55c93083b";
    sha256 = "0kbfawj5wsp1mwfcm5mwpkq6s3d13pailjm5w268gqpxjksziyq0";
  };

  nativeBuildInputs = [ cmake ];
  buildInputs = [ SDL SDL_gfx SDL_image SDL_mixer boost libyamlcpp libGLU libGL openssl zlib ];

  meta = {
    description = "OpenXcom Extended: fork on OpenXcom, Open source clone of UFO: Enemy Unknown";
    homepage = "https://openxcom.org";
    repositories.git = "https://github.com/MeridianOXC/OpenXcom.git";
    maintainers = [ lib.maintainers.cpages ];
    platforms = lib.platforms.linux;
    license = lib.licenses.gpl3;
  };

}
