set -e

git config --global user.email "$GH_EMAIL"
git config --global user.name "$GH_NAME" 

git init
git add -f docs/.vuepress/dist
git commit -m 'deploy'
git filter-branch -f --prune-empty --subdirectory-filter docs/.vuepress/dist 
git push --force --quiet git@github.com:elliehamilton3/elliehamilton3.github.io.git 

cd -