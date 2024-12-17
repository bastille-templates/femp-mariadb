# FEMP (FreeBSD, Nginx, MariaDB, and PHP(PHPMyAdmin))
## Now apply template to container
```sh
bastille create femp-mariadb 14.1-RELEASE YourIP-Bastille
bastille bootstrap https://github.com/bastille-templates/femp-mariadb
bastille template femp-mariadb bastille-templates/femp-mariadb
```

## License
This project is licensed under the BSD-3-Clause license.