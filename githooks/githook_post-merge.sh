#!/usr/bin/env bash

# git hook to run a command after `git pull`, to check if a specified file was changed
# Run `chmod +x post-merge` to make it executable then put it into `.git/hooks/`.

changed_files="$(git diff-tree -r --name-only --no-commit-id ORIG_HEAD HEAD)"

show_message() {
    echo "*****************************************************"
    echo "*****************************************************"
    echo "***** CAREFULL, {filename} file has been changed!!!!!"
    echo "*****************************************************"
    echo "*****************************************************"
}

check_run() {
    echo "$changed_files" | grep "$1" && show_message
}

# git hook to check if any particular filename has been change since
# last pull. replace {filename} by corresponding filename
check_run {filename}