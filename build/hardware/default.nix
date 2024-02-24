{config, lib, pkgs, ...}: {

imports = [
  ./efi.nix
  ./modules/sound.nix
  ./modules/bluetooth.nix
  ./modules/battery.nix   
  #./modules/nvidia-optimus.nix
  ./modules/networking.nix
  ./hardware-laptop-configuration.nix  
];

}
