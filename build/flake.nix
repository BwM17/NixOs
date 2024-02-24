{
  description = "System Configuration"; 

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11"; 
    home-manager.url = "github:nix-community/home-manager/release-23.11";   
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };  

  outputs = { self, nixpkgs, home-manager, ... }: 
    let   
      lib = nixpkgs.lib; 
    in { 
      networking.hostname = "nixtop";
      nixosConfigurations = {
        nix-laptop = lib.nixosSystem {
         system = "x86_64-linux";
         modules = [ 
          ./configuration.nix    
          ./hosts/laptop/default.nix
          home-manager.nixosModules.home-manager{
            home-manager.useUserPackages = true; 
            home-manager.useGlobalPkgs = true;  
            home-manager.users.redlotus = import ./home.nix;
          }  
         ];  
      };
    };
  };
}
    