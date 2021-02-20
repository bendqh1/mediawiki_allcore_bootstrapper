#!/bin/bash

## Create specific backups (some files have glob patterns outside quote marks): ##
cp "${domain_dir}/LocalSettings.php" "${specific_backups_dir}" &&
cp "${domain_dir}/robots.txt" "${specific_backups_dir}" &&
cp "${domain_dir}/${domain}.png" "${specific_backups_dir}" &&
cp "${domain_dir}"/.htaccess* "${specific_backups_dir}" &&
cp "${domain_dir}"/google*.html "${specific_backups_dir}"

## Create web application root general backup: ##
zip -r "${general_backups_dir}/${domain}-directory-backup-${current_date}.zip" "${domain_dir}"

## Test specific backups: ##
ll $specific_backups_dir
ll $general_backups_dir
