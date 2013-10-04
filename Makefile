.PHONY: httpdocs
httpdocs:
	drush make drush.make httpdocs
	cp -a profiles/mtpk httpdocs/profiles
	cp httpdocs/translations/*.po httpdocs/profiles/mtpk/translations
	mkdir -p httpdocs/sites/default/files
	chmod 777 httpdocs/sites/default/files
	cp httpdocs/sites/default/default.settings.php httpdocs/sites/default/settings.php
	chmod 666 httpdocs/sites/default/settings.php
