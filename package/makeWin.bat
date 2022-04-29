rem "Building deb file from autoplot.jar"
rem "This should be run in the root of the project, containing dist directory."
rem "package/makeDeb.sh"

rem "check for dist/SmallJavaApp.jar"

SET v=1.2.3

jpackage ^
  --app-version $v ^
  --input dist/ ^
  --dest dist/ ^
  --name SmallJavaApp ^
  --main-jar SmallJavaApp.jar ^
  --type exe ^
  --vendor "Cottage Systems" ^
  --copyright "Copyright 2022 faden@cottagesystems.com" ^
  --java-options '--enable-preview'

rem "dist/smalljavaapp_$v-1_amd64.exe"


