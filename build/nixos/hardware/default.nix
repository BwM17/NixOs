{ config, lib, pkgs, ... } : {
 
 imports = [
  ./hardware-configuration.nix
  ./efi.nix 
  ./driver/default.nix
 ]; 

} 
