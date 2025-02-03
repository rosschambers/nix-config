{ config, pkgs, ...}:{
	imports = [
		./hardware-configuration.nix
	];

	networking.hostName = "ixiri-flex";
	time.timeZone = "America/Detroit";
	i18n.defaultLocale = "en_US.UTF-8"; 

	services.logind.lidSwitch = "suspend";
}
