#!/bin/bash

## Declare web application directory backup variables: ##
current_date="$(date +%d-%m-%Y-%H-%M-%S)"
general_backups_dir="${HOME}/mediawiki_general_backups"
specific_backups_dir="${HOME}/mediawiki_specific_backups"

## Create general AND Specific backup directories: ##
if [[ ! -d "${general_backups_dir}" ]]; then mkdir -p "${general_backups_dir}"; fi
if [[ ! -d "${specific_backups_dir}" ]]; then mkdir -p "${specific_backups_dir}"; fi

## Create specific backups (some files have glob patterns outside quote marks): ##
cp "${domain_dir}/LocalSettings.php" "${specific_backups_dir}"
cp "${domain_dir}/robots.txt" "${specific_backups_dir}"
cp "${domain_dir}/${domain}.png" "${specific_backups_dir}"
cp "${domain_dir}"/.htaccess* "${specific_backups_dir}"
cp "${domain_dir}"/google*.html "${specific_backups_dir}"

## Test specific backups: ##
ll "${specific_backups_dir}"

## Create web application root general backup: ##
zip -r "${general_backups_dir}/${domain}-directory-backup-${current_date}.zip" "${domain_dir}"

## Create web application database general backup: ##
read -s dbname
read -s dbusername
mysqldump -u"$dbusername" -p "$dbname" > "${general_backups_dir}/${dbusername}-${current_date}.sql"
# -u && -p and dbname variable expansions shouldn't have "${}", rather, just "$";
# If one wants to prompt dbusername password, -p should include a following whitespace character;
# In general, dbusername and dbname variables must be different variables even if their values are the same;
# Database Management Programs (i.e mysqldump, PHPMyAdmin) can produce databases in different sizes due to different data organization methods (as well as caching);

## Test general backups: ##
ll "${general_backups_dir}"
