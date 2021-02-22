#!/bin/bash

## Create filetree general backups:
zip -r "${latest_general_backups_dir}/${domain}-directory-backup.zip" "${domain_dir}"

## Create filetree specific backups (Some files have shell glob patterns outside quote marks):
cp "${domain_dir}/LocalSettings.php" "${latest_specific_backups_dir}" &&
cp "${domain_dir}/robots.txt" "${latest_specific_backups_dir}" &&
cp "${domain_dir}/${domain}.png" "${latest_specific_backups_dir}" &&
cp "${domain_dir}"/.htaccess* "${latest_specific_backups_dir}" &&
cp "${domain_dir}"/google*.html "${latest_specific_backups_dir}"

## Test filetree general backups:
ll $latest_general_backups_dir

## Test filetree specific backups:
ll $latest_specific_backups_dir
