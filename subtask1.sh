#!bin/bash

x=1

while [ $x -lt 51 ]
do
 u="Army$x"
 att=$(echo /root/attendance.log | grep "Army$x")
 
 echo "<!DOCTYPE html>
<html>
 <head>
   <meta charset="utf-8">
 </head>

 <body>
   <p>$u</p>
   <p>$att</p>
 </body>
</html>">>/home/$u/index.html

cp /root/attendence.log /home/$u/attendance.log

touch /etc/apache2/sites-available/$u.conf

echo "<VirtualHost *:80>
  ServerAdmin webmaster@$u.com
  ServerName $u.com
  ServerAlias www.soldier.io
  DocumentRoot /home/$u/

  <Directory /home/$u/>
	Options Indexes FollowSymLinks
	AllowOverride all
	Require all granted
	RewriteEngine on
	RewriteCond "%{HTTP_USER_AGENT}" ".*ChiefCommander.*"
	RewriteRule "^ $" "/attendance.log" [R,L]
  </Direcory>

  ErrorLog ${APACHE_LOG_DIR}/error.log
  CustomLog ${APACHE_LOG_DIR}/access.log combined

</VirtualHost>">>/etc/apache2/sites-available/$u.conf

 sudo a2ensite $u.conf

 x=$(expr $x + 1)

done


x=1

while [ $x -lt 51]
do
 u="Navy$x"
 att=$(echo /root/attendance.log | grep "Navy$x")
 
 echo "<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
 </head>

 <body>
   <p>$u</p>
   <p>$att</p>
 </body>
</html>">>/home/$u/index.html

cp /root/attendence.log /home/$u/attendance.log

touch /etc/apache2/sites-available/$u.conf

echo "<VirtualHost *:80>
  ServerAdmin webmaster@$u.com
  ServerName $u.com
  ServerAlias www.soldier.io
  DocumentRoot /home/$u/

  <Directory /home/$u/>
	Options Indexes FollowSymLinks
	AllowOverride all
	Require all granted
	RewriteEngine on
	RewriteCond "%{HTTP_USER_AGENT}" ".*ChiefCommander.*"
	RewriteRule "^ $" "/attendance.log" [R,L]
  </Direcory>

  ErrorLog ${APACHE_LOG_DIR}/error.log
  CustomLog ${APACHE_LOG_DIR}/access.log combined

</VirtualHost>">>/etc/apache2/sites-available/$u.conf

sudo a2ensite $u.conf

x=$(expr $x + 1)

done


x=1

while [ $x -lt 51 ]
do
 u="Airforce$x"
 att=$(echo /root/attendance.log | grep "Airforce$x")
 
 echo "<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
 </head>

 <body>
   <p>$u</p>
   <p>$att</p>
 </body>
</html>">>/home/$u/index.html

cp /root/attendence.log /home/$u/attendance.log

touch /etc/apache2/sites-available/$u.conf

echo "<VirtualHost *:80>
  ServerAdmin webmaster@$u.com
  ServerName $u.com
  ServerAlias www.soldier.io
  DocumentRoot /home/$u/

  <Directory /home/$u/>
	Options Indexes FollowSymLinks
	AllowOverride all
	Require all granted
	RewriteEngine on
	RewriteCond "%{HTTP_USER_AGENT}" ".*ChiefCommander.*"
	RewriteRule "^ $" "/attendance.log" [R,L]
  </Direcory>

  ErrorLog ${APACHE_LOG_DIR}/error.log
  CustomLog ${APACHE_LOG_DIR}/access.log combined

</VirtualHost>">>/etc/apache2/sites-available/$u.conf

x=$(expr $x + 1)

sudo a2ensite $u.conf

done


sudo service apache2 restart


echo "127.0.0.1 www.soldier.io">>/etc/hosts









