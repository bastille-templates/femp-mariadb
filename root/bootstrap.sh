SECRET=$(openssl rand -base64 32)
sed -i -e "s|\$cfg\['blowfish_secret'\] = .*;|\$cfg['blowfish_secret'] = \\sodium_hex2bin('$SECRET');|" /usr/local/www/phpMyAdmin/config.inc.php

echo 'Verify .....'
grep "blowfish_secret" /usr/local/www/phpMyAdmin/config.inc.php
