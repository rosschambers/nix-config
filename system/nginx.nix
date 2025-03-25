{ config, pkgs, ...}:
{
	services = {
		nginx = {
	    	enable = true;
	    	virtualHosts = {
	    		"nextcloud.serve" = {
	    			locations."/" = {
	    				return = "301 https://nextcloud.rosschambers.xyz";
	    			};
	    		};
	    		"adguard.serve" = {
	    			locations."/" = {
	    				proxyPass = "http://127.0.0.1:3000";
					};
	    		};
	    		"nextcloud.rosschambers.xyz" = {
	    			addSSL = true;
	    			enableACME = true;
	    		};
	    		_ = {
					locations."/" = {
						return = 404;
					};
				};
	    	};
		};
	};

	security.acme = {
	  acceptTerms = true;
	  defaults.email = "acme@rosschambers.xyz";
	};
	
	users.users.nginx.extraGroups = [ "acme" ];

	networking.firewall.allowedTCPPorts = [
		80
		443
	];
}
