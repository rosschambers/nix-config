{ config, pkgs, ...}:
{
	services = 
	{
		home-assistant = {
		    enable = true;
		    openFirewall = true;
		    extraComponents = [
		    	"adguard"
		    	"lutron_caseta"
		    	"google_assistant"
		    	"cast"
		    	"nest"
		    	"august"
		    	"august_ble"
		    	"google_photos"
		    	"spotify"

		    	
		    	"analytics"
		    	"google_translate"
		    	"met"
		    	"radio_browser"
		    	"shopping_list"
		    	# Recommended for fast zlib compression
		    	# https://www.home-assistant.io/integrations/isal
		    	"isal"
		    ];
		    config = {
		    	default_config = {};	
		    };
	    };
    };
}
