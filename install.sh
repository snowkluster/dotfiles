#!/usr/bin/env bash

declare -a home_dot=()
declare -a config_dir=() # add bash logic to mv all folder to XDG_CONFIG

readarray -d '' home_dot < <(find . -maxdepth 1 -type f -name '.*' -print0)

for i in "${home_dot[@]}"
do
  cp -t "$HOME" "$i"
done

if [ -x "$(command -v batcat)" ]; then
  batcat cache --build # addes the tokyo night theme to batcat 
fi
# batcat themes are just sublime text themes
 
