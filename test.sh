#!/bin/bash


git_version=$(git --version | awk '{print $3}')
httpd_version=$(httpd -v | awk 'NR==1 {print $3}')

cat << EOF
{
         "GIT_VERSION": "$git_version",
         "HTTPD_VERSION": "$httpd_version"
}
EOF
