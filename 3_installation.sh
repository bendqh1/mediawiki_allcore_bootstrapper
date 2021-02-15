#!/bin/bash

## Prepare to download, install and configure MediaWiki and specific backups: ##
cd "${web_application_root}"
rm -rf "${domain_dir}"

## Declare script variables: ##
latest_mediawiki_core="https://releases.wikimedia.org/mediawiki/1.34/mediawiki-1.34.2.tar.gz"

## Download and configure MediaWiki core: ##
wget "${latest_mediawiki_core}" &&
find . -maxdepth 1 -iname 'mediawiki*.tar.gz' -type f -exec tar -xzf {} \; && 
find . -maxdepth 1 -type d -iname '*mediawiki*' -execdir mv {} "${domain}" \; &&
find . -maxdepth 1 -iname 'mediawiki*.tar.gz' -type f -exec rm {} \;

## Test previous operation: ##
ll

## Retreive specific backups to the new installation: ##
cp -a "${specific_backups_dir}"/.htaccess "${domain_dir}" # Only .htaccess file;
cp -a "${specific_backups_dir}"/* "${domain_dir}" # All files besides .htaccess;

## Test specific backups retreiving: ##
ll ${domain_dir}
