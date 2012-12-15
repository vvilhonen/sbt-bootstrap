#!/bin/bash
curl https://raw.github.com/paulp/sbt-extras/master/sbt > sbt 
chmod a+x sbt 
mkdir -p project
mkdir -p src/main/scala
mkdir -p src/test/scala
echo 'addSbtPlugin("com.github.mpeltonen" % "sbt-idea" % "1.2.0")' > project/plugin.sbt
