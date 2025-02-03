{ config, pkgs, ... }:
{
	security.sudo.extraConfig = ''
	  Defaults       timestamp_timeout=3600
	'';
}
