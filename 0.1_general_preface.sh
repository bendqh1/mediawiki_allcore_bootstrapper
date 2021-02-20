#!/bin/bash

## Declare latest mediawiki core download link:
latest_mediawiki_core="https://releases.wikimedia.org/mediawiki/1.35/mediawiki-1.35.1.tar.gz"

## Declare web application variables:
read domain
read db_name
read db_nonroot_user_name
web_application_root="${HOME}/www"
domain_dir="${web_application_root}/${domain}"
