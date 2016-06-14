rm build-release/out/*.deb
docker build -t ringojs/build-release build-release/
docker run -v `pwd`/build-release/out:/opt/out ringojs/build-release

if [ $? -eq 0 ]; then
   echo "Building Debian package SUCCESSFUL"
else
   echo "Building Debian package FAILED"
fi;