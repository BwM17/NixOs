{ config, lib, pkgs, ... } : {
 
 imports = [
  ./hyprland.nix  
  ./bspwm.nix 
  #./kde.nix
  ./fonts.nix 
 ]; 

 services.xserver = { 
  enable = true;  

 displayManager = {
  sddm = { 
   enable = true; 
   
   wayland = {
    enable = true;    
    };
   }; 
  };
 };
}
