{config, lib, pkgs, ...}: { 

 system = { 
   stateVersion = "23.11";
 };

 time = {
    timeZone = "Europe/Berlin";
  };
 
 services.xserver = { 
  layout = "de";
  xkbVariant = "";
 }; 

  i18n = {
    defaultLocale = "de_DE.UTF-8";
    extraLocaleSettings = {
      LC_ADDRESS = "de_DE.UTF-8";
      LC_IDENTIFICATION = "de_DE.UTF-8";
      LC_MEASUREMENT = "de_DE.UTF-8";
      LC_MONETARY = "de_DE.UTF-8";
      LC_NAME = "de_DE.UTF-8";
      LC_NUMERIC = "de_DE.UTF-8";
      LC_PAPER = "de_DE.UTF-8";
      LC_TELEPHONE = "de_DE.UTF-8";
      LC_TIME = "de_DE.UTF-8";
    };
  }; 
  

  console = { 
    earlySetup = true;
    keyMap = "de"; 
    font="${pkgs.terminus_font}/share/consolefonts/ter-132b.psf.gz";  
    packages = with pkgs; [ terminus_font ];
  };
} 



