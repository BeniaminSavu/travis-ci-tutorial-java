git config user.name "BeniaminSavu";
git config user.email "benisavu@gmail.com";
git fetch;
git checkout master;
git reset;
msg="Tag Generated from TravisCI for build $TRAVIS_BUILD_NUMBER";
echo "$msg" >> build.txt;
git status;
git add build.txt;
git status;
git commit -m "new commit";
git push origin HEAD:master;