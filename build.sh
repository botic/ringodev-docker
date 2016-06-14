rm build-debian-package/out/*.deb
docker build -t ringojs/debpack build-debian-package/
docker run -v `pwd`/build-debian-package/out:/opt/out ringojs/debpack

if [ $? -eq 0 ]; then
   echo "Building Debian package SUCCESSFUL"
else
   echo "Building Debian package FAILED"
fi;