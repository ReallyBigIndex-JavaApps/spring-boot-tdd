#!/bin/bash

echo "***** Copying files to api droplet.."
rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR root@$DEPLOY_HOST:/root/app/
echo "***** Copy done!"
echo
echo "***** Executing deployment script."
ssh root@$DEPLOY_HOST "cd /root/app; chmod +x sample.sh; sh sample.sh"
echo "***** Executing deployment script done!"