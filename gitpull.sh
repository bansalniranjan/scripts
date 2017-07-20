#!/bin/bash

repos=( 
  "/f/git/acdc/scripts"
  "/f/git/acdc/global-config"
  "/f/git/acdc/rightscale"
  "/f/git/acdc/rightscale-cats"
  "/f/git/niranjan/scripts"
  "/f/git/niranjan/global-config"
  "/f/git/niranjan/rightscale"
  "/f/git/niranjan/rightscale-cats"  
  "/f/git/develop/scripts"
  "/f/git/develop/global-config"
  "/f/git/develop/rightscale"
  "/f/git/develop/rightscale-cats"
)

echo "Starting git pull"
echo "Getting latest for" ${#repos[@]} "repositories using pull --rebase"

for repo in "${repos[@]}"
do
  echo ""
  echo "****** Getting latest for" ${repo} "******"
  cd "${repo}"
  git pull
  echo "******************************************"
done