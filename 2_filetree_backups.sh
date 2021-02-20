#!/bin/bash

## Create filetree general backups: ##
zip -r "${general_backups_dir}/${domain}-directory-backup-${current_date}.zip" "${domain_dir}"

## Create filetree specific backups (Some files have glob patterns outside quote marks):
cp "${domain_dir}/LocalSettings.php" "${specific_backups_dir}" &&
cp "${domain_dir}/robots.txt" "${specific_backups_dir}" &&
cp "${domain_dir}/${domain}.png" "${specific_backups_dir}" &&
cp "${domain_dir}"/.htaccess* "${specific_backups_dir}" &&
cp "${domain_dir}"/google*.html "${specific_backups_dir}"

## Test specific backups: ##
ll $general_backups_dir &&
ll $specific_backups_dir