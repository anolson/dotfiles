#!/bin/sh

FILES="$HOME/.dotfiles/sublime/Packages/User/*"
SUBLIME_PREFERENCES_DIR="$HOME/Library/Application Support/Sublime Text 3/Packages/User"

echo "Setting up Sublime Text preferences."

for file in $FILES
do
  basename=$(basename "$file")
  source_file="$file"
  target_file="$SUBLIME_PREFERENCES_DIR/$basename"
  echo " - Linking $target_file"
  ln -sf "$source_file" "$target_file"
done
