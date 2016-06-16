# cleanup
if [ "$(ls ../artifacts/)" ]; then
   echo "Cleaning artifacts"
   rm ../artifacts/ringo*
fi

# build artifacts
docker run -v `pwd`/../artifacts/:/opt/out ringojs/buildservice
if [ $? -eq 0 ]; then
   echo "Build stage SUCCESSFUL"
else
   echo "Build stage FAILED"
   exit 1
fi;

# test artifacts
docker run -v `pwd`/../artifacts/:/opt/out ringojs/buildtests
if [ $? -eq 0 ]; then
   echo "Debian package test SUCCESSFUL"
else
   echo "Debian package test FAILED"
   exit 2
fi;

# everything went fine
echo "DONE"
exit 0