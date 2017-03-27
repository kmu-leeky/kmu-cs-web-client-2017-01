#!/bin/bash

clone_url_prefix="git@github.com:kmucs-web-client-2017-01/"
homework_name_prefix="learn-how-to-submit-homework-and-project-"

while IFS='' read -r line || [[ -n "$line" ]]; do
  echo "OOOOOOOOOOOOOOOOOOOOOOO - "$line
  if [ -z ${line} ]; then 
    echo "empty URL. continue"
    continue 
  fi
  git_clone_url="$clone_url_prefix""$homework_name_prefix""$line"".git"
  git clone "$git_clone_url"
  access=$(echo $?)
  if [ "$access" != "0" ]; then
    echo "XXXXXXXXXXXX git clone error"
    continue
  fi
  cat "$homework_name_prefix""$line"/student-info
done < "$1"
