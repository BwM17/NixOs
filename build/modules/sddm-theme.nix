#where is my sddm theme 


{ pkgs }:

pkgs.stdenv.mkDerivation {
  name = "sddm-theme";
  src = pkgs.fetchFromGitHub { 
    owner = "stepanzubkov";
    repo = "where-is-my-sddm-theme";
    rev = "1457631fa87dd4139d45bd9ef38359c13bf0b269";
    sha256 = "0wm4zgmivh5jnq90df2ikl1zvmvd19bvmldh2s5syg1yk0d7xl9q";
  };

  installPhase = ''
    mkdir -p $out/share/sddm/themes
    cp -aR $src $out/share/sddm/themes/where-is-my-sddm-theme
  '';
}
