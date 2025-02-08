{config, pkgs, ...}:
{
	environment.systemPackages = with pkgs; [
		bat
		micro
		discord
		github-desktop
		kitty
		jetbrains.rider
		vscode-fhs
		devbox
		plantuml
	];

	programs = {
		firefox.enable = true;
		steam.enable = true;
		direnv.enable = true;

		nix-ld.enable = true;

		git = {
			enable = true;
			config = {
				init.defaultBranch = "main";
			};
		};
	};
}
