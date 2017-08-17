YEAR=$(date +"%Y")
MONTH=$(date +"%m")
git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"
git config --global user.password ${GH_PASSWORD}
git config --global push.default simple
git remote add origin https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git
msg="Tag Generated from TravisCI for build $TRAVIS_BUILD_NUMBER"
git push origin master && git push origin master --tags
ls -a
