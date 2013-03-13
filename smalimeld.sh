#!/bin/bash - 
#===============================================================================
#
#          FILE: smalimeld.sh
# 
#         USAGE: ./smalimeld.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: linkscue (scue), linkscue@gmail.com
#       CREATED: 2013年03月13日 22时48分05秒 HKT
#     COPYRIGHT: Copyright (c) 2013, linkscue
#      REVISION: 0.1
#  ORGANIZATION: ATX破晓组
#===============================================================================

set -o nounset                              # Treat unset variables as an error
if [[ $# == 0 ]]; then
    echo "$(basename $0) <smali_file>"
    exit 1
fi
smali=$1
export LANGUAGE=zh_CN.UTF-8
meld temp/old_smali/"$1"  temp/new_smali/"$1" noline/"$1" &

