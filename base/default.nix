{ config, pkgs, ...}:
{
	nix = {
		settings = {
			auto-optimise-store = true;
		};
		gc = {
			automatic = true;
			dates = "weekly";
			options = "--delete-older-than 7d";	
		};
	};

	virtualisation.docker.rootless = {
		enable = true;
		setSocketVariable = true;	
	};
	
	nixpkgs.config.allowUnfree = true;

	imports = [
		./boot.nix
		./gnome.nix
		./networking.nix
		./programs.nix
		./security.nix
		./services.nix
	];
}
