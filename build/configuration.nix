{ config, pkgs, ... }:

{
  #imports = [ # Include the results of the hardware scan../hardware-configuration.nix]; 
  #Graphic 

  #hardware.opengl = {
  #	enable = true; 
	# driSupport = true; 
	# driSupport32Bit = true; 
  # }; 

  #services.xserver.videoDrivers = ["nvidia"]; 
  #hardware.nvidia = {
	#modesetting.enable = true; 
	
	#Powermanagemet 
	#powerManagement.enable = true;  
	
	# Turnes off GPU when not in use
	#powerManagement.finegrained = true;  

	# load Kernel Moduels 
	#open = true; 
	
	# enable nvidia Settings
	#nvidiaSettings = true; 
	
	#package = config.boot.kernelPackages.nvidiaPackages.stable;
  #};

  
  #hardware.nvidia.prime = {
	#offload = { 
	#enable = true;
	#	enableOffloadCmd = true;
	#};
	# Make sure to use the correct Bus ID values for your system!
	#intelBusId = "PCI:0:2:0";
	#nvidiaBusId = "PCI:14:0:0";
	#};


  # Bootloader.
  #boot.loader.systemd-boot.enable = true;
  #boot.loader.efi.canTouchEfiVariables = true;
  
   #networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  #networking.networkmanager.enable = true;

  # Set your time zone.
  #time.timeZone = "Europe/Berlin";

  # Select internationalisation properties.
  #i18n.defaultLocale = "de_DE.UTF-8";

  #i18n.extraLocaleSettings = {
  #  LC_ADDRESS = "de_DE.UTF-8";
  #  LC_IDENTIFICATION = "de_DE.UTF-8";
  #  LC_MEASUREMENT = "de_DE.UTF-8";
  #  LC_MONETARY = "de_DE.UTF-8";
  #  LC_NAME = "de_DE.UTF-8";
  #  LC_NUMERIC = "de_DE.UTF-8";
  #  LC_PAPER = "de_DE.UTF-8";
  #  LC_TELEPHONE = "de_DE.UTF-8";
  #  LC_TIME = "de_DE.UTF-8";
  #};
  # Configure console keymap
  ##console.keyMap = "de";


  # Enable sound with pipewire.
  # sound.enable = true;
  # hardware.pulseaudio.enable = false;
  # security.rtkit.enable = true;
  # services.pipewire = {
  #   enable = true;
  #  alsa.enable = true;
  #  alsa.support32Bit = true;
  #  pulse.enable = true;
  #  # If you want to use JACK applications, uncomment this
  #  #jack.enable = true;
  #
  #  # use the example session manager (no others are packaged yet so this is enabled by default,
  #  # no need to redefine it in your config for now)
  #  #media-session.enable = true;
  #};

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
#  users.users.redlotus = {
#    isNormalUser = true;
#    description = "redlotus";
#    extraGroups = [ "networkmanager" "wheel" ];
#    packages = with pkgs; [
    #  thunderbird
#    ];
#  }; 


  # Allow unfree packages
  #nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [  
  neovim 
	sxhkd
	nitrogen
	dbus
	git
	starship
	rofi
	wget
	libgcc
	gdb
	vscode
	lsd 
	nerdfonts  
	kitty 
  blueman
	xorg.xbacklight 
	picom-next
	playerctl  
  where-is-my-sddm-theme
  eww-wayland 
  dotnet-sdk_8
  dotnet-runtime_8
  dotnet-aspnetcore_8 
  swww 
  acpi
  socat
  jq 
  ]; 

 # nix.settings.experimental-features = [ "nix-command" "flakes" ];


  #powersettings  
#  services.tlp = {
#      enable = true;
#      settings = {
#        CPU_SCALING_GOVERNOR_ON_AC = "performance";
#        CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
#
#        CPU_ENERGY_PERF_POLICY_ON_BAT = "powersave"; 
#        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
#
#        CPU_MIN_PERF_ON_AC = 0;
#        CPU_MAX_PERF_ON_AC = 100;
#        CPU_MIN_PERF_ON_BAT = 0;
#        CPU_MAX_PERF_ON_BAT = 20;
#      };
#};


  #services.auto-cpufreq.enable=true;
  #services.auto-cpufreq.settings = {
	#battery = {
	#	governor = "powersave"; 
	#	turbo = "never";
	#};
	#charger = {
	#	governor = "never"; 
	#	turbo = "auto"; 
	#}; 
 # }; 
  
 #powerManagement.powertop.enable = true;


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

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  #system.stateVersion = "23.11"; # Did you read the comment?

}
