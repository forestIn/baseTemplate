description "Gunicorn server for SITENAME"

start on net-device-up
stop on shutdown

respawn

setuid stri
chdir /home/stri/sites/SITENAME/source

exec ../virtualenv/bin/gunicorn \
    --bind unix:/tmp/SITENAME.socket \
    superlists.wsgi:application

Then it’s easy for us to use those two files to generate a new site, by doing a find & replace on SITENAME.

For the rest, just keeping a few notes is OK. Why not keep them in a file in the repo too?

deploy_tools/provisioning_notes.md. 

Provisioning a new site
=======================

## Required packages:

* nginx
* Python 3
* Git
* pip
* virtualenv

eg, on Ubuntu:

    sudo apt-get install nginx git python3 python-dev
    sudo pip install --user virtualenv 
   

## Nginx Virtual Host config

* see nginx.template.conf
* replace SITENAME with, eg, staging.my-domain.com

## Upstart Job

* see gunicorn-upstart.template.conf
* replace SITENAME with, eg, staging.my-domain.com

## Folder structure:
Assume we have a user account at /home/username

/home/username
└── sites
    └── SITENAME
         ├── database
         ├── source
         ├── static
         └── virtualenv
