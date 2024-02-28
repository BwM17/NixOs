{pkgs, ...}: {
  services.xserver = {
    enable = true;  
    windowManager.bspwm = {
      enable = false;  
    };
  }; 
  
} 
