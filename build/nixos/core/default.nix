{config, lib, pkgs, ...}: { 

  imports = [
    ./nix.nix
    ./nixos.nix 
    ./packages/default.nix 
  ];  

}
