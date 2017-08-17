YEAR=$(date +"%Y")
MONTH=$(date +"%m")
git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"
git config --global push.default simple
export GIT_TAG=V2.$YEAR-$MONTH.$TRAVIS_BUILD_NUMBER
git fetch --tags
msg="Tag Generated from TravisCI for build $TRAVIS_BUILD_NUMBER"
echo Git Tag $GIT_TAG and $TRAVIS_BUILD_NUMBER
if git tag $GIT_TAG -a -m "$msg" 2>/dev/null; then
git tag $GIT_TAG -a -m "Tag Generated from TravisCI for build $TRAVIS_BUILD_NUMBER"
git push origin master && git push origin master --tags
ls -a
else echo Tag already exists! 
fi
