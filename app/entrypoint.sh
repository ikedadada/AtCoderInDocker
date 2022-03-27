#!/bin/sh

set -e

source ~/.ashrc

oj login -u $LOGIN_ID -p $PASSWORD "https://atcoder.jp/"
oj login --check "https://atcoder.jp/"

expect -c "
  set timeout 3
  spawn acc login
  expect \"? username:\"
  send \"$LOGIN_ID\n\"
  expect \"? password:\"
  send \"$PASSWORD\n\"
  interact
"

echo "
if [ -f ~/.ashrc ]; then
  source ~/.ashrc
fi
" >> ~/.profile

cp -r /app/py /root/.config/atcoder-cli-nodejs/py

acc config default-template py

exec "$@"
