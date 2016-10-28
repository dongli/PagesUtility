#!/bin/bash

scripts_directory="$HOME/Library/Scripts/Applications"
for app in 'Pages'; do
  test -d "$scripts_directory/$app" || mkdir "$scripts_directory/$app"
done

# Compile AppleScripts.
osacompile -o ./Change\ Western\ Character\ Font.scpt ./Change\ Western\ Character\ Font.applescript

# Copy AppleScripts to user's HOME scripts directory.
cp ./Change\ Western\ Character\ Font.scpt "$scripts_directory/Pages"
