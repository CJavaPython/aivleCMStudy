#!/bin/bash

mkdir -p 초급 중급 고급

index=1
while IFS= read -r line; do
  if [ $index -le 20 ]; then
    target_folder="초급"
  elif [ $index -le 70 ]; then
    target_folder="중급"
  else
    target_folder="고급"
  fi
  mkdir -p "${target_folder}/${line}"
  index=$((index + 1))
done < problem_list.txt