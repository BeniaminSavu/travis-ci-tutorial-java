SOURCE_BRANCH="master"
TARGET_BRANCH="master"

REPO=`git config remote.origin.url`
SSH_REPO=${REPO/https:\/\/github.com\//git@github.com:}
SHA=`git rev-parse --verify HEAD`

git clone $REPO out
# Clean out existing contents
rm -rf out/**/* || exit 0

cd out
git config user.name "${GIT_NAME}"
git config user.email "${GIT_EMAIL}"

msg="Tag Generated from TravisCI for build $TRAVIS_BUILD_NUMBER"
echo "$msg" >> build.txt
git add build.txt
git status
git commit -m "Update build version file with $TRAVIS_BUILD_NUMBER"
git push $SSH_REPO $TARGET_BRANCH
