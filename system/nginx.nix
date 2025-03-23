{ config, pkgs, ...}:
{
	services = {
		nginx = {
	    	enable = true;
	    	virtualHosts = {
	    		"nextcloud.serve" = {
	    			addSSL = true;
	    			forceSSL = true;
	    			enableAcme = true;	
	    		};
	    	};
		};
	};

	security.acme = {
	  acceptTerms = true;
	  defaults.email = "acme@rosschambers.xyz";
	};

	networking.firewall.allowedTCPPorts = [
		80
		443
	];
}
