{ config, pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
		gnomeExtensions.pop-shell
		gnomeExtensions.super-key
		pop-launcher
		#cosmic-launcher
		#onagre
	];
	
	environment.gnome.excludePackages = with pkgs; [
		epiphany		# web browser
		gedit			# text editor
		simple-scan	# document scanner
		yelp			# help viewer
		evince			# document viewer
		geary			# email client

		gnome-calculator
		gnome-calendar
		gnome-characters
		gnome-clocks
		gnome-contacts
		gnome-font-viewer
		gnome-logs
		gnome-maps
		gnome-music
		gnome-photos
		gnome-screenshot
		gnome-weather
	];
}
