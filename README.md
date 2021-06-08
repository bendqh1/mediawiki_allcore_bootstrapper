# mediawiki_allcore_bootstrapper

## Tracing and debugging
One might want to add `set -x && complete -r` to .bashrc for full traces;
One might want to run `set -euo` to .bashrc for debugging; if so and one tests the script line by line or block by block, any mistake would terminate the session;

## Additional information
https://unix.stackexchange.com/questions/635287/xor-in-shell-globs;
Because shell glob patterns aren't expanded when quoted (unless in GNU find), I didn't quote them anywhere in this program;
With GNU find I used single quote marks instead double ones (with the exception of "${domain}" variable expansion and possibly its further path due to the nature of GNU find;
