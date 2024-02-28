{ config, pkgs, ... } : { 

  imports = 
    [ 
      ./core/default.nix 
      ./graphical/default.nix  
      ./services/default.nix
      ./hardware/default.nix  
      ./user/default.nix 
      <home-manager/nixos>
    ]; 

  # Configure keymap in X11
  services.xserver = {
    layout = "de";
    xkbVariant = "";
  }; 

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

}
