#!/bin/bash
curl https://raw.github.com/paulp/sbt-extras/master/sbt > sbt 
chmod a+x sbt 
mkdir -p project
mkdir -p src/main/scala
mkdir -p src/test/scala
if [ ! -e build.sbt ]; then
  cat > build.sbt <<EOF
//libraryDependencies ++= Seq(
//  "org.scalatest" %% "scalatest" % "1.8" % "test")
EOF
fi
echo 'addSbtPlugin("com.github.mpeltonen" % "sbt-idea" % "1.2.0")' > project/plugin.sbt
