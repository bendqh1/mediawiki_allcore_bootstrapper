#!/bin/bash

## Retreive latest specific backups to the new installation:
cp -a "${latest_specific_backups_dir}"/.htaccess "${domain_dir}" # Only .htaccess file;
cp -a "${latest_specific_backups_dir}"/* "${domain_dir}" # All files besides .htaccess;

## Test specific backups retrievement:
ll
