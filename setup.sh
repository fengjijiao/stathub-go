#!/bin/bash
function get_json_value()
{
  local json=$1
  local key=$2
  if [[ -z "$3" ]]; then
    local num=1
  else
    local num=$3
  fi
  local value=$(echo "${json}" | awk -F"[,:}]" '{for(i=1;i<=NF;i++){if($i~/'${key}'\042/){print $(i+1)}}}' | tr -d '"' | sed -n ${num}p)
  echo ${value}
}
apt update
apt install curl
VERSION=get_json_value $(curl -s https://api.github.com/repos/fengjijiao/stathub-go/releases/latest) tag_name
BASEDIR="/usr/local/stathub"
mkdir BASEDIR
wget -O "${BASEDIR}/stathub" "https://github.com/fengjijiao/stathub-go/releases/download/${VERSION}/stathub-$(uname -m)"
chmod +x "${BASEDIR}/stathub"
wget -O "/etc/systemd/system/stathub.service" "https://raw.githubusercontent.com/fengjijiao/stathub-go/master/stathub.service"
mkdir "${BASEDIR}/conf"
wget -O "/usr/local/stathub/conf/stathub.conf" "https://raw.githubusercontent.com/fengjijiao/stathub-go/master/stathub-server.conf"
systemctl enable stathub
systemctl start stathub