{ config, pkgs, ...}:
{
	users.groups = {
		samba = { };	
	};

	services = 
	{
		samba = {
		    enable = true;
		    openFirewall = true;
		    settings = {
		    	global= {
		    		"security" = "user";
		    	};
		    	"share" = {
		    		"path" = "/share/public";
		    		"read only" = "no";
		    		"guest ok" = "yes";
		    		"create mask" = "0777";
		    		"directory mask" = "0777";
		    		"writeable" = "yes";
		    		"public" = "yes";
		    	};
		    	"ixiri" = {
		    		"path" = "/share/private";
		    		"read only" = "no";
		    		"guest ok" = "no";
		    		"writeable" = "yes";
		    		"valid users" = "@samba";
		    	};
		    };
		};
		samba-wsdd = {
		    enable = true;
		    openFirewall = true;	
		};
	};
	
	networking.firewall = {
	  allowedTCPPorts = [ 53 ];
	  allowedUDPPorts = [ 53 ];	
	};
}
