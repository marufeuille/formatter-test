#!/bin/bash
mkdir -p ~/.ssh
cp id_rsa ~/.ssh/
chmod 600 ~/.ssh
chmod 400 ~/.ssh/id_rsa
cat - << EOS >> ~/.ssh/config
Host github.com
  HostName github.com
  IdentityFile ~/.ssh/id_rsa
  User git
EOS
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
cat ~/.ssh/id_rsa
git config user.name "formatting with black on GCB"
git config user.email "marufeuille@gmail.com"
black .
git add -A
git commit -m "formatting with black $(date +%Y%m%d)"
git push