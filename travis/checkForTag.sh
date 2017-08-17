if [[ ! -z ${TRAVIS_TAG} ]] 
then  mvn --batch-mode release:update-versions -DdevelopmentVersion=${TRAVIS_TAG};