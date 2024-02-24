{pkgs, lib, ... } : { 

  services.xserver.videoDrivers = [ "intel" "nvidia" ]; 
  #hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable; 
  hardware.opengl =  {
    enable = true; 
    driSupport = true; 
  };  
  
  
  hardware.nvidia = {

   modesetting.enable = true; 

  #Experimental
  #powerManagement.enable = true;  

    nvidiaSettings = true; 
    prime = { 
      offload = { 
        enable = true;
        enableOffloadCmd = true; 
      };
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:14:0:0";
    }; 
  };
}









