rem "Building deb file from autoplot.jar"
rem "This should be run in the root of the project, containing dist directory."
rem "package/makeDeb.sh"

rem "check for dist/SmallJavaApp.jar"

SET v=1.2.3

c:\Progra~1\Java\jdk-17.0.2\bin\jpackage ^
  --app-version %v% ^
  --input dist ^
  --dest dist ^
  --name SmallJavaApp ^
  --main-jar SmallJavaApp.jar ^
  --type exe ^
  --vendor "Cottage Systems" ^
  --copyright "Copyright 2022 faden@cottagesystems.com" ^
  --win-per-user-install ^
  --win-menu ^
  --win-menu-group Autoplot
  
rem "dist/smalljavaapp_%v%-1_amd64.exe"
