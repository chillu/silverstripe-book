# Installation
See Chapter 2, "Installation" for details on how to set up SilverStripe.
Further installation instructions are available online at:
http://doc.silverstripe.com/doku.php?id=installation

Ensure that your webserver webroot points to one of the subfolders
(e.g. "4_first_steps/"), not the root folder of the archive.
If you use a standard WAMP or MAMP installation, you should be able
to access the web-based installer through http://localhost/.

Copy relevant configuration from mysite/_config_example.php to mysite/_config.php
Ensure that your theme is set to "mysite" in mysite/_config.php

# Sample Database
You'll find a database.sql dump in all folders containing sample data, please import
through phpMyAdmin or similar MySQL database tools.
IMPORTANT: Please import this database *after* running the web-installer.

# CMS Access
Every sample database is set up with a default user,
which will override any previous users you might have configured
through the installer:
Username: admin
Password: password

# Support
If you have trouble installing any of the examples, please visit
the SilverStripe community forums: http://silverstripe.org/forums/