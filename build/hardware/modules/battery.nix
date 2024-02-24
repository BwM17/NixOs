{config, lib, pkgs, ...}: {
  imports = [
    ../../services/tlp.nix
    ../../services/auto-cpufreq.nix
  ];

  powerManagement.powertop.enable = true;
}