if [[ ! -z ${TRAVIS_TAG} ]] 
then  mvn --batch-mode release:update-versions -DdevelopmentVersion=${TRAVIS_TAG};
echo "The tah is -------------------------------- ${TRAVIS_TAG}";
fi
