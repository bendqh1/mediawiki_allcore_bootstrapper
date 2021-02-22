#!/bin/bash

## Delete the old MediaWiki filetree:
rm -rf "${domain_dir}"

## Test deletion:
ll

## Download and extract a new mediawiki filetree: ##
wget "${latest_mediawiki_core}" &&
find . -maxdepth 1 -iname 'mediawiki*.tar.gz' -type f -exec tar -xzf {} \; && 
find . -maxdepth 1 -type d -iname '*mediawiki*' -execdir mv {} "${domain}" \; &&
find . -maxdepth 1 -iname 'mediawiki*.tar.gz' -type f -exec rm {} \;

## Test download and extraction: ##
ll
