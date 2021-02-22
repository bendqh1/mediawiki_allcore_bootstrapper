#!/bin/bash

## Declare latest mediawiki core download link:
latest_mediawiki_core="https://releases.wikimedia.org/mediawiki/1.35/mediawiki-1.35.1.tar.gz"

## Declare web application variables:
read domain
read web_application_root # "${HOME}/www
read domain_dir # "${web_application_root}"/${domain}"/public_html
