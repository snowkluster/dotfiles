#!/usr/bin/env bash

declare -a home_dot=()

readarray -d '' home_dot < <(find . -maxdepth 1 -type f -name '.*' -print0)

for i in "${home_dot[@]}"
do
  cp -t "$HOME" "$i"
done
