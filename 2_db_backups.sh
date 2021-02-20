#!/bin/bash

## Create database general backup: ##

mysqldump -u"$db_nonroot_user_name" -p "$db_name" > "${general_backups_dir}/${db_nonroot_user_name}-${current_date}.sql"
# -u && -p and db_name variable expansions shouldn't have "${}", rather, just "$";
# If one wants to prompt db_nonroot_user_name password, -p should include a following whitespace character;
# In general, db_nonroot_user_name and db_name variables must be different variables even if their values are the same;
# Database Management Programs (i.e mysqldump, PHPMyAdmin) can produce databases in different sizes due to different data organization methods (as well as caching);

## Test database general backup: ##
ll $general_backups_dir
