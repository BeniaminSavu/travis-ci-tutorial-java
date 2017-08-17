git remote set-url origin https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git
git config user.name "${GIT_NAME}"
git config user.email "${GIT_EMAIL}"
msg="Tag Generated from TravisCI for build $TRAVIS_BUILD_NUMBER"
echo "$msg" >> build.txt
git add build.txt
git commit -m "Update build version file with $TRAVIS_BUILD_NUMBER"
git push origin master
