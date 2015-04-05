#!/bin/bash

grunt && git commit -am "updated docs" && git checkout gh-pages
cp -Rf dist/* .
if [ -n "$1" ]; then
  rm -rf javadocs-core
  rm -rf javadocs-server
  rm -rf javadocs-client
  wget -O jdocs1.zip https://oss.sonatype.org/service/local/repositories/releases/content/com/erudika/para-core/$1/para-core-$1-javadoc.jar &&
  wget -O jdocs2.zip https://oss.sonatype.org/service/local/repositories/releases/content/com/erudika/para-server/$1/para-server-$1-javadoc.jar &&
  wget -O jdocs3.zip https://oss.sonatype.org/service/local/repositories/releases/content/com/erudika/para-client/$1/para-client-$1-javadoc.jar &&
  unzip jdocs1.zip -d javadocs-core && rm jdocs1.zip
  unzip jdocs2.zip -d javadocs-server && rm jdocs2.zip
  unzip jdocs3.zip -d javadocs-client && rm jdocs3.zip
fi
git add -A && git commit -am "updated docs"
git push origin gh-pages
git checkout master
git push origin master
echo "-- done --"
