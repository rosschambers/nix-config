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
	nixpkgs.config.allowUnfree = true;

	imports = [
		./boot.nix
		./gnome.nix
		./networking.nix
		./programs.nix
		./security.nix
		./services.nix
	];
	environment.systemPackages = with pkgs; [
		micro
		bat
		wget
		git
	];
}
