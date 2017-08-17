if [[ ! -z ${TRAVIS_TAG} ]] 
then mvn versions:set -DnewVersion=${TRAVIS_TAG};
mvn clean install;
echo "The tah is -------------------------------- ${TRAVIS_TAG}";
fi
