#!/bin/bash

# 1. 난이도별 폴더 생성
mkdir -p 코딩마스터스/초급 코딩마스터스/중급 코딩마스터스/고급

# 2. 문제명 읽기
index=1
while IFS= read -r line; do
  if [ $index -le 20 ]; then
    target_folder="코딩마스터스/초급"
  elif [ $index -le 70 ]; then
    target_folder="코딩마스터스/중급"
  else
    target_folder="코딩마스터스/고급"
  fi

  # 3. 문제명을 폴더로 생성하고 .gitkeep 파일 추가
  mkdir -p "${target_folder}/${line}"
  touch "${target_folder}/${line}/.gitkeep"
  index=$((index + 1))
done < problem_list.txt