{ config, pkgs, ...}:
{
	services = {
		ddclient = {
		    enable = true;
		    configFile = "/share/config/ddclient.conf";
	    };
    };
}
