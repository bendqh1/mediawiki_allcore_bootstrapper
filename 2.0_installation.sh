#!/bin/bash

## Declare latest mediawiki core download link:
latest_mediawiki_core="https://releases.wikimedia.org/mediawiki/1.35/mediawiki-1.35.1.tar.gz"

## Prepare to delete "old" MediaWiki filetree and to download, install and configure a new MediaWiki filetree with retrieved latest specific backups:
cd "${web_application_root}"
rm -rf "${domain_dir}"

## Download and extract mediawiki core: ##
wget "${latest_mediawiki_core}" &&
find . -maxdepth 1 -iname 'mediawiki*.tar.gz' -type f -exec tar -xzf {} \; && 
find . -maxdepth 1 -type d -iname '*mediawiki*' -execdir mv {} "${domain}" \; &&
find . -maxdepth 1 -iname 'mediawiki*.tar.gz' -type f -exec rm {} \;

## Test download and extraction: ##
ll
