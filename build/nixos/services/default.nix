{ config, lib, pkgs, ... } : {
 
 imports = [
  ./audio.nix 
  ./networking.nix 
  ./monitor.nix
 ];

}
