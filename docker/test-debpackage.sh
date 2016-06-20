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