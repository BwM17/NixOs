{config, lib, pkgs, ...} : { 
  imports = [
    ../../hardware/default.nix  
    ../../core/default.nix 
    ../../graphical/default.nix
  ];

}
