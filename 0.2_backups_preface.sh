#!/bin/bash

## Declare existing installation backup variables:
current_date="$(date +%d-%m-%Y-%H-%M-%S)"
general_backups_dir="${HOME}/mediawiki_general_backups"
specific_backups_dir="${HOME}/mediawiki_specific_backups"


## If backup directories don't exist, create them:
rm -rf "${general_backups_dir}"
mkdir -p "${general_backups_dir}"
rm -rf "${specific_backups_dir}"
mkdir -p "${specific_backups_dir}"
