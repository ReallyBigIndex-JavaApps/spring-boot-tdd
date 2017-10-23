echo "Copying files to api droplet.."
rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/target/spring-boot-tdd.jar root@9.30.99.175:~/
echo "Copy done!"

#ssh root@9.109.125.77 "cd ~/deploy_script.sh"