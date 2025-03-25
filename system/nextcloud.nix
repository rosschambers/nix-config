{ config, pkgs, ...}:
{
	
	environment.etc."nextcloud-admin-pass".text = "WeAreTheChampions!";

	services = {
		nextcloud = {
		    enable = true;
		    package = pkgs.nextcloud31;
		    hostName = "nextcloud.rosschambers.xyz";
			database.createLocally = true;
#			dataDir
			https = true;
#			configureRedis = true;
			config = {
				dbtype = "pgsql";
				adminuser = "admin";
#				adminpassFile = "/share/config/nextcloud-admin.conf";
				adminpassFile = "/etc/nextcloud-admin-pass";
			};
			extraApps = {
				inherit (config.services.nextcloud.package.packages.apps)  news contacts calendar deck end_to_end_encryption memories onlyoffice spreed tasks twofactor_webauthn; 	
			};
	    };
	};
}
