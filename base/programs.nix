{config, pkgs, ...}:
{
	environment.systemPackages = with pkgs; [
		discord
		github-desktop
		kitty	
	];

	programs = {
		firefox.enable = true;
		steam = {
			enable = true;	
		};
	};	
}
