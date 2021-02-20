#!/bin/bash

# https://unix.stackexchange.com/questions/635287/xor-in-shell-globs
# Shell glob patterns aren't expanded when quoted (unless in GNU find), so I didn't quote them;
# With GNU find I used single quote marks instead double ones (with the exception of "${domain}" variable expansion and possibly its further path);
# Set debug mode (if not dont already, you might want to add set -x && complete -r into .bashrc
# set -euo # If you plan to test the script line by line (or block by block) don't use it, as mistakes would terminate the session;

## Declare general variables:
read domain &&
web_application_root="${HOME}/www" &&
domain_dir="${web_application_root}/${domain}/public_html" &&
current_date="$(date +%d-%m-%Y-%H-%M-%S)"
