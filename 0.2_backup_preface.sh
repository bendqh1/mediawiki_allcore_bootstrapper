#!/bin/bash

## Declare existing installation backup variables:
current_date="$(date +%d-%m-%Y-%H-%M-%S)" &&
specific_backups_dir="${HOME}/mediawiki_specific_backups" &&
general_backups_dir="${HOME}/mediawiki_general_backups"

## If backup directories don't exist, create them:
if [ ! -d "${general_backups_dir}" ]; then mkdir -p "${general_backups_dir}"; fi &&
if [ ! -d "${specific_backups_dir}" ]; then mkdir -p "${specific_backups_dir}"; fi
