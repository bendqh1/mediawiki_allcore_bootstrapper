#!/bin/bash

## Declare database variables:
read db_name
read db_nonroot_user_name

## Create database general backup:
mysqldump -u"$db_nonroot_user_name" -p "$db_name" > "${latest_general_backups_dir}/${db_name}.sql"

## Test database general backup:
ll $latest_general_backups_dir

## Chapter notes:
# -u && -p and db_name variable expansions shouldn't be wrapped with "${}", rather, just with "$" (as above);
# To directly prompt for db_nonroot_user_name PASSWORD, -p should include a following whitespace character (as above);
# In general, db_nonroot_user_name and db_name variables must be different variables even if their values are the same (as above);
