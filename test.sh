docker build -t ringojs/debpacktest test-debian-package/
docker run -v `pwd`/test-debian-package/packages/:/opt/packages ringojs/debpacktest

if [ $? -eq 0 ]; then
   echo "Debian package SUCCESSFUL"
else
   echo "Debian package FAILED"
fi;