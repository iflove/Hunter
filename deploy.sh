#!/usr/bin/env bash

function getLibVerName() {
  # shellcheck disable=SC2091
  grep "versionName" ${1} | awk '{print $2}' | sed 's/\"//g'
}

function pushApk(){
  json=`curl -F "file=@${1}" https://www.andedu.com.cn/commons/file/upload | grep id | sed 's/[[:space:]]//g'`
  printf "${json} \n"
  id=$(parseJson $json '"id"' | sed 's/\"//g')
  vxGetApkFile ${id}
  echo '=================================================================='
  echo "fileId: ${id}"
  echo "fileName: $(parseJson $json '"name"' | sed 's/\"//g')"
  echo "fileSize: $(parseJson $json '"size"' | sed 's/\"//g')"
  echo '=================================================================='
}

function vxGetApkFile(){
  curl -i -k https://www.andedu.com.cn/commons/file/$1
}

function parseJson(){
#    echo ${json}
    echo $1 | sed 's/.*'$2':\([^,}]*\).*/\1/'
}

echo 'exec deploy commands'
#cat deploy.sh | grep 'function' | awk '{print $2}' | sed 's/(){//g' | cat -n
$*
