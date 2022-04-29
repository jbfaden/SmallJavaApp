echo "Building deb file from autoplot.jar"
echo "This should be run in the root of the project."
echo "package/makeDeb.sh"

if [ ! -f dist/SmallJavaApp.jar ]; then
    echo "dist/SmallJavaApp.jar does not exist"
    exit -1
fi

v=1.2.3

/usr/local/jdk-17/bin/jpackage \
  --app-version $v \
  --input dist/ \
  --dest dist/ \
  --name SmallJavaApp \
  --main-jar SmallJavaApp.jar \
  --type deb \
  --vendor "Cottage Systems" \
  --copyright "Copyright 2022 faden@cottagesystems.com" \
  --java-options '--enable-preview'

echo "deb file is dist/smalljavaapp_$v-1_amd64.deb"

echo "On my machine, gdebi dist/smalljavaapp_$v-1_amd64.deb this writes to /opt/smalljavaapp/bin/SmallJavaApp"
