#!/bin/bash

## Create a new sitemap:
mkdir -p "${domain_dir}/sitemap"

php /maintenance/generateSitemap.php \
--memory-limit=50M \
--fspath=/"${domain_dir}/sitemap" \
--identifier="${domain}" \
--urlpath=/sitemap/ \
--server=https://"${domain}" \
--compress=yes

# Ensure that robots.txt sitemap directive is:
# Sitemap: https://"${domain}"/sitemap/sitemap-index-"${domain}".xml
