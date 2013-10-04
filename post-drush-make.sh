TARGET=$1

cp -a profiles/mtpk $TARGET/profiles
if [ -d $TARGET/translations ]; then
  mkdir -p $TARGET/profiles/mtpk/translations
  cp $TARGET/translations/*.po $TARGET/profiles/mtpk/translations
fi
mkdir -p $TARGET/sites/default/files
chmod 777 $TARGET/sites/default/files
cp $TARGET/sites/default/{default.settings.php,settings.php}
chmod 666 $TARGET/sites/default/settings.php

