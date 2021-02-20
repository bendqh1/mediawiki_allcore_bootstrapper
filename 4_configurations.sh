#!/bin/bash

## Prepare to create and configure a new sitemap and to update database: ##
cd "${domain_dir}"

## Create a new sitemap: ##
rm -rf "${domain_dir}/sitemap"
mkdir -p "${domain_dir}/sitemap"

php "${domain_dir}/maintenance/generateSitemap.php" \
--memory-limit=50M \
--fspath=/"${domain_dir}/sitemap" \
--identifier="${domain}" \
--urlpath=/sitemap/ \
--server=https://"${domain}" \
--compress=yes

# Ensure that robots.txt sitemap directive is:
# Sitemap: https://"${domain}"/sitemap/sitemap-index-"${domain}".xml

## Update database (One might need to change LocalSettings.php before doing so): ##
php "${domain_dir}/maintenance/update.php" --quick &&
php maintenance/rebuildrecentchanges.php
