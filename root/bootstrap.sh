openssl rand -base64 32 | tr -d '\n' > /root/rahasia.txt
key=$(/root/rahasia.txt)
sed -i -e "s/\$cfg\['blowfish_secret'\] = '';/\$cfg\['blowfish_secret'\] = \\sodium_hex2bin(\'$key\'');/g" /usr/local/www/phpMyAdmin/config.inc.php