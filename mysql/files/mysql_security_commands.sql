# This set of commands will modify the predefined accounts of a MySQL installation
# to increase security.

SET @@old_passwords=0; 
UPDATE mysql.user SET Password=PASSWORD('123456') WHERE User='root' and plugin in ('', 'mysql_native_password');
SET @@old_passwords=2; 
UPDATE mysql.user SET authentication_string=PASSWORD('123456') WHERE User='root' and plugin='sha256_password'; 

FLUSH PRIVILEGES;
