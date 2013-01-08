#! /bin/sh

git rm -rf gallery
mkdir gallery
cp -r _site/photos/* gallery
git add ./
git commit -m "new content with new gallery"
git push origin master
