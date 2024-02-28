 { config, lib, pkgs, ... } : {
  
   users.users = { 
    redlotus  = {  
     shell = pkgs.zsh;
     isNormalUser = true; 
     description = "redlotus";
     extraGroups = [ 
      "wheel"
      "networkmanager"
      "video"
      "audio"
     ];  

     packages = with pkgs; [
      brave
      wdisplays
      wofi  
      discord
      dolphin 
      lsd 
      vscode
      logseq
      dotnet-sdk_8
      dotnet-aspnetcore_8
      dotnet-runtime_8
     ]; 
    }; 
  }; 
 
 home-manager.users.redlotus = { pkgs, ... }: {  
  home.stateVersion = "23.11";

  home.packages = with pkgs; [  
   gtop  
   starship
  ] ++ 
  (
  if (config.services.xserver.windowManager.bspwm.enable == true) then with pkgs;[    
    sxhkd
    eww
   ] 
  else (if (config.programs.hyprland.enable == true) then  with pkgs; [ 
   eww-wayland 
  ] 
  else []
  ));  

  imports = [
    ./packages/default.nix 
    ./graphical/default.nix
  ];
};

}
