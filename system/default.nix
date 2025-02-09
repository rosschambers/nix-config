{ config, pkgs, ...}:{
	imports = [
		./hardware-configuration.nix
		./adguard.nix
	];

	networking.hostName = "ixiri-serve";
	time.timeZone = "America/Detroit";
	i18n.defaultLocale = "en_US.UTF-8";

	systemd.sleep.extraConfig = ''
	  AllowSuspend=no
	  AllowHibernation=no
	  AllowHybridSleep=no
	  AllowSuspendThenHibernate=no
	'';
}
