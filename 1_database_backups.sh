#!/bin/bash

## Create database general backup:
mysqldump -u"$db_nonroot_user_name" -p "$db_name" > "${general_backups_dir}/${db_nonroot_user_name}-${current_date}.sql"

## Test database general backup:
ll $general_backups_dir

## Chapter notes
# -u && -p and db_name variable expansions shouldn't be wrapped with "${}", rather, just with "$" (as above);
# To directly prompt for db_nonroot_user_name PASSWORD, -p should include a following whitespace character (as above);
# In general, db_nonroot_user_name and db_name variables must be different variables even if their values are the same (as above);
