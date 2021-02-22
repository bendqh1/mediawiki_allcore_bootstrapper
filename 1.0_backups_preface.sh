#!/bin/bash

## Declare existing installation backup variables:
current_date="$(date +%d-%m-%Y-%H-%M-%S)" &&
latest_general_backups_dir="${HOME}/mediawiki_general_backups-${current_date}" &&
latest_specific_backups_dir="${HOME}/mediawiki_specific_backups-${current_date}"

## If backup directories don't exist, create them:
mkdir -p "${latest_general_backups_dir}" &&
mkdir -p "${latest_specific_backups_dir}"

## Test existence of empty directories
ll "${latest_general_backups_dir}" &&
ll "${latest_specific_backups_dir}"
