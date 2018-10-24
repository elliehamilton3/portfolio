set -e

git config --global user.email "$GH_EMAIL"
git config --global user.name "$GH_NAME" 

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:elliehamilton3/elliehamilton3.github.io.git master

cd -