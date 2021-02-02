#!/bin/bash
mkdir -p ~/.ssh
cat $(gcloud secrets versions access 1 --secret="GITHUB_DEPLOY_KEY" --project "ishii-sandbox") > ~/.ssh/id_rsa