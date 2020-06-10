#!/bin/bash

OLD=$(mktemp -d -t languages_in_floss_XXXX)
cd $OLD

function clean_tmp() {
  [ -n "$OLD" ] && rm -Rf "$OLD"
}

token=$(cat /var/www/my_webapp__2/token)

username=$(git config user.name)
email=$(git config user.email)

if [ -z "$username" ] || [ -z "$email" ] ; then
    echo "git config"
    git config --global user.email "contact@languages-in-floss.eu"
    git config --global user.name "♪ I'm a bot, bot, bot ♪"
    git config --global push.default simple
fi

trap clean_tmp exit

echo "Get Hugo 0.69.0"
wget --quiet https://github.com/gohugoio/hugo/releases/download/v0.69.0/hugo_0.69.0_Linux-64bit.tar.gz

echo "Extract Hugo 0.69.0"
tar -xf hugo_0.69.0_Linux-64bit.tar.gz

echo "Clone languages-in-floss/site"
git clone --quiet --recurse-submodules https://github.com/languages-in-floss/site website

cd website
git remote set-url origin https://jibec:$token@github.com/languages-in-floss/site.git

echo "Run get-mentions.py"
python3 get-mentions.py

echo "Update pot files"

./make-pot.sh

echo "Update translated content"
./make-translated-content.sh

git add .
git commit -m "l10n automatic refresh"
git push

echo "Run hugo"
../hugo

echo "copy rsyn files"
sudo rsync --quiet -az --chown=webapp2:webapp2 --delete public/ /var/www/my_webapp__2/www/
