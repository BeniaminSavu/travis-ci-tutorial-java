rev=$(git rev-parse --short HEAD);
git config user.name "BeniaminSavu";
git config user.email "benisavu@gmail.com";
git checkout master
git reset;
msg="Tag Generated from TravisCI for build $TRAVIS_BUILD_NUMBER";
echo "$msg" >> build.txt;
git status;
git add build.txt;
git commit -m "rebuild pages at ${rev}";
git push origin HEAD:master;
