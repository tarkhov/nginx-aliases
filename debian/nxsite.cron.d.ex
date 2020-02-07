#
# Regular cron jobs for the nxsite package
#
0 4	* * *	root	[ -x /usr/bin/nxsite_maintenance ] && /usr/bin/nxsite_maintenance
