echo "Building deb file from autoplot.jar"
echo "This should be run in the root of the project."

/usr/local/jdk-17/bin/jpackage \
  --verbose \
  --input dist/ \
  --name SmallJavaApp \
  --main-jar SmallJavaApp.jar \
  --type deb \
  --vendor "Cottage Systems" \
  --copyright "Copyright 2022 faden@cottagesystems.com" \
  --java-options '--enable-preview'
