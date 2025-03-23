{ config, pkgs, ...}:
{
	services = {
		nextcloud = {
		    enable = true;
		    package = pkgs.nextcloud31;
		    hostName = "nextcloud.serve";
			database.createLocally = true;
#			configureRedis = true;
			config = {
				dbtype = "pgsql";
				adminuser = "admin";
				adminpassFile = "/share/config/nextcloud-admin.conf";
			};
	    };

#		nginx = {
#	    	enable = true;
#	    	virtualHosts = {
#	    		"nextcloud.serve" = {		
#	    		};
#	    	};
#		};
	};

	networking.firewall.allowedTCPPorts = [ 80 ];
}
