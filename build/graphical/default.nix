{config, lib, pkgs, ...}: { 
  imports = [
    ./fonts.nix
    ./hyprland.nix
    ./bspwm.nix 
  ]; 

  services.xserver = { 
    enable = true;  

    displayManager = {
      sddm = {
        enable = true;   

        wayland = {
          enable = true;
        };

      theme = "${import ../modules/sddm-theme.nix {inherit pkgs; }}";


      };

    };
  };
}
