{ config, libs, pkgs, ... } : { 
 
 imports = [ 
  ./tmux.nix 
  ./zsh.nix 
  ./starship.nix
 ]; 

 environment.systemPackages = with pkgs; [ 
  docker
  git   
  gcc
  dbus
  wget 
  curl
  neovim
  kitty 
  acpi
  socat 
  neofetch
  jq 
  libedit
 ];
}
