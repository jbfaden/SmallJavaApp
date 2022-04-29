echo "Building deb file from autoplot.jar"
echo "This should be run in the root of the project."

if [ ! -f dist/SmallJavaApp.jar ]; then
    echo "dist/SmallJavaApp.jar does not exist"
    exit(-1)

/usr/local/jdk-17/bin/jpackage \
  --verbose \
  --input dist/ \
  --name SmallJavaApp \
  --main-jar SmallJavaApp.jar \
  --type deb \
  --vendor "Cottage Systems" \
  --copyright "Copyright 2022 faden@cottagesystems.com" \
  --java-options '--enable-preview'
