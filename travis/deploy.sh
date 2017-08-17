YEAR=$(date +"%Y")
MONTH=$(date +"%m")
git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"
msg="Tag Generated from TravisCI for build $TRAVIS_BUILD_NUMBER"
git push origin master && git push origin master --tags
