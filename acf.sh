# Скрипт для активации функции ACF LOCAL JSON

sys=`uname`;
if [ $sys == 'Darwin' ];

then
    #Mac OS
  sed -i '' s/'return json_encode($json, JSON_PRETTY_PRINT)'/'return json_encode($json, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE)'/g ../../plugins/advanced-custom-fields-pro/api/api-helpers.php

else
  #не Mac OS
  sed -i s/'return json_encode($json, JSON_PRETTY_PRINT)'/'return json_encode($json, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE)'/g ../../plugins/advanced-custom-fields-pro/api/api-helpers.php

fi

mkdir acf-json
chmod 777 acf-json
echo '<? echo "Silence is golden";?>'>acf-json/index.php
rm acf.sh
