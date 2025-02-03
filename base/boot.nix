{ config, pkgs, ...}:
{
	boot = {
		loader = {
			systemd-boot.enable = true;
			efi.canTouchEfiVariables = true;
			systemd-boot.configurationLimit = 10;	
		};

		kernelParams = [ "quiet" "splash" "rd.udev.log-priority=3" ];
		plymouth.enable = true;
		consoleLogLevel = 0;
		initrd.verbose = false;
	};
}
