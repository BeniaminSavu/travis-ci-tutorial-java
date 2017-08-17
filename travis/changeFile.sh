rev=$(git rev-parse --short HEAD)

cd out

git init
git config user.name "BeniaminSavu"
git config user.email "benisavu@gmail.com"

git remote add upstream "https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git"
git fetch upstream
git reset upstream/master

msg="Tag Generated from TravisCI for build $TRAVIS_BUILD_NUMBER"
echo "$msg" >> build.txt

ls
git status

git add -A .
git commit -m "rebuild pages at ${rev}"
git push -q upstream HEAD:refs/heads/master
