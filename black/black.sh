#!/bin/bash
mkdir -p ~/.ssh
cat $(gcloud secrets versions access 1 --secret="GITHUB_DEPLOY_KEY" --project "ishii-sandbox") > ~/.ssh/id_rsa
git config user.name "formatting with black on GCB"
git config user.email "marufeuille@gmail.com"
black .
git add -A
git commit -m "formatting with black $(date+%Y%m%d)"
git push