echo "***** Copying files to api droplet.."

#rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/target/spring-boot-tdd.jar root@13.126.88.66:/root/app/
rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR root@13.126.88.66:/root/app/

echo "***** Copy done!"

ssh root@13.126.88.66 "cd /root/app; chmod +x sample.sh; sh sample.sh"