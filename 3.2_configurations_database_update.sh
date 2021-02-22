#!/bin/bash

## Update database (One might need to change LocalSettings.php before doing so):
php "${domain_dir}/maintenance/update.php" --quick &&
php maintenance/rebuildrecentchanges.php
