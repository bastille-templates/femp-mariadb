SECRET=$(uuidgen | tr -d '-' | head -c64)
sed -i -e "s|\$cfg\['blowfish_secret'\] = .*;|\$cfg['blowfish_secret'] = \\\sodium_hex2bin('$SECRET');|" /usr/local/www/phpMyAdmin/config.inc.php

echo 'Verify .....'
grep "blowfish_secret" /usr/local/www/phpMyAdmin/config.inc.php

# Apache configuration PHP
printf '<?php phpinfo(); ?>\n\n' > /usr/local/www/nginx/info.php
rm /root/bootstrap.sh