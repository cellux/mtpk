.PHONY: httpdocs
httpdocs:
	drush make drush.make httpdocs
	./post-drush-make.sh httpdocs

.PHONY: recreate-db
recreate-db:
	mysql -e "DROP DATABASE IF EXISTS mtpk"
	mysql -e "CREATE DATABASE mtpk DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci"
	mysql -e "GRANT ALL PRIVILEGES ON mtpk.* TO mtpk@localhost IDENTIFIED BY 'mtpk'"
