echo "Building deb file from autoplot.jar"
echo "This should be run in the root of the project."

if [ ! -f dist/SmallJavaApp.jar ]; then
    echo "dist/SmallJavaApp.jar does not exist"
    exit -1
fi

/usr/local/jdk-17/bin/jpackage \
  --verbose \
  --input dist/ \
  --dest dist/ \
  --name SmallJavaApp \
  --main-jar SmallJavaApp.jar \
  --type deb \
  --vendor "Cottage Systems" \
  --copyright "Copyright 2022 faden@cottagesystems.com" \
  --java-options '--enable-preview'

echo "deb file is smalljavaapp_1.0-1_amd64.deb"

echo "On my machine this writes to /opt/smalljavaapp/bin/SmallJavaApp"
