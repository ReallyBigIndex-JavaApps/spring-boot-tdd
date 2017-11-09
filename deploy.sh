#!/bin/bash

echo "***** Copying files to api droplet.."
rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR root@$TARGET_SERVER_HOST:/root/app/
echo "***** Copy done!"
echo
echo "***** Executing deployment script."
ssh root@$TARGET_SERVER_HOST "cd /root/app; chmod +x sample.sh; sh sample.sh"
echo "***** Executing deployment script done!"

echo "***** Start zipping the chaincode folder!"
zip -r $TRAVIS_BUILD_DIR.zip $TRAVIS_BUILD_DIR
echo "***** End zipping the chaincode folder!"