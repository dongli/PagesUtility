#!/bin/bash

scripts_directory="$HOME/Library/Scripts/Applications"
for app in 'Pages'; do
  test -d "$scripts_directory/$app" || mkdir "$scripts_directory/$app"
done

# Copy AppleScripts to user's HOME scripts directory.
function copy {
  echo "[Notice]: Copy $1 to $2."
}

copy './Change\ Western\ Character\ Font.scpt' "$scripts_directory/Pages"
