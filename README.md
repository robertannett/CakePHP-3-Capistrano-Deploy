CakePHP 3 Capistrano Deploy
##########################

This setup will allow for a CakePHP site to deploy to a server.

Ubuntu Setup:
===========

1) Use ssh-copy-id to allow your machine to connect to your server without a password e.g. ssh-copy-id user@hostname.example.com
2) Place the downloaded Cap folder in your app directory
3) Configure your Deploy.rb file
4) Configure your stages e.g. Production.rb and Staging.rb
5) On the server, set up the shared folder and drop in the linked folders & files
6) Commit the latest version of your app to your repo
7) In terminal, change directory into the cap folder, eg cd /var/www/mysite/app/cap
8) Use Capistrano to deploy the site, e.g. cap production deploy

Requirments:
============
Capistrano v3.1 or above
SSH Kit: https://github.com/capistrano/sshkit
Capistrano Composer: https://github.com/capistrano/composer
