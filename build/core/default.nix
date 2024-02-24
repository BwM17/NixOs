{config, lib, pkgs, ...}: {
  imports = [
    ./nix.nix
    ./nixos.nix
  ]; 

  users.users.redlotus = {
    isNormalUser = true; 
    description = "redlotus"; 
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}
