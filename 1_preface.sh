#!/bin/bash

# https://unix.stackexchange.com/questions/635287/xor-in-shell-globs
# Shell glob patterns aren't expanded when quoted (unless in GNU find), so I didn't quote them;
# With GNU find I used single quote marks instead double ones (with the exception of "${domain}" variable expansion and possibly its further path);

## Set debug mode: ##
set -x && complete -r
# set -euo # If you plan to test the script line by line (or block by block) don't use it, as mistakes would terminate the session;

## Declare web application root variables:
web_application_root="${HOME}/www"
read domain
domain_dir="${web_application_root}/${domain}"
