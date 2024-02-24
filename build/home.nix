{ config, pkgs, ... }: 

{
  home = {
    username = "redlotus";   
    homeDirectory = "/home/redlotus";  
    stateVersion = "23.11";  

    packages = with pkgs; [
      firefox
      nnn
    ];
  }; 


}
