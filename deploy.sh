set -e

git config --global user.email "$GH_EMAIL"
git config --global user.name "$GH_NAME" 

git init
git add docs/.vuepress/dist
git commit -m 'deploy'
git subtree push --prefix docs/.vuepress/dist origin gh-pages

cd -