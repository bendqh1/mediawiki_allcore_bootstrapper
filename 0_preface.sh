#!/bin/bash

## Declare web application variables:
read domain
read db_name
read db_nonroot_user_name
web_application_root="${HOME}/www"
domain_dir="${web_application_root}/${domain}/public_html" &&
latest_mediawiki_core="https://releases.wikimedia.org/mediawiki/1.34/mediawiki-1.34.2.tar.gz"

## Declare backup variables:
current_date="$(date +%d-%m-%Y-%H-%M-%S)" &&
specific_backups_dir="${HOME}/mediawiki_specific_backups" &&
general_backups_dir="${HOME}/mediawiki_general_backups"

## If backup directories did not exist before, create them:
if [ ! -d "${general_backups_dir}" ]; then mkdir -p "${general_backups_dir}"; fi &&
if [ ! -d "${specific_backups_dir}" ]; then mkdir -p "${specific_backups_dir}"; fi
