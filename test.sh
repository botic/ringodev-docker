docker build -t ringojs/debpacktest test-debian-package/
docker run -v `pwd`/build-release/out/:/opt/packages ringojs/debpacktest

if [ $? -eq 0 ]; then
   echo "Debian package SUCCESSFUL"
else
   echo "Debian package FAILED"
fi;