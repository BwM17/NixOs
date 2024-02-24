{pkgs, ...}: {
  services.xserver = {
    enable = true; 
    windowManager.bspwm = {
      enable = true;  
    };

    layout = "de"; 
    xkbVariant = "";
  }; 
  
  environment.systemPackages = with pkgs; [
    sxhkd
  ];

    
} 