{ config, pkgs, ... }:
{
	services = {

		xserver = {
			enable = true;
			displayManager.gdm = {
				enable = true;
				wayland = true;
			};
			desktopManager.gnome.enable = true;
		};

		pipewire = {
			enable = true;
			alsa.enable = true;
			alsa.support32Bit = true;
			pulse.enable = true;
		};

		openssh = {
			enable = true;
		};

		system76-scheduler.enable = true;

		yubikey-agent.enable = true;
	};
}
