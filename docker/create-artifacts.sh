# cleanup
if [ "$(ls ../artifacts/)" ]; then
   echo "Cleaning artifacts"
   rm ../artifacts/ringo*
   rm ../artifacts/SHASUMS256*.txt
fi

# build artifacts
docker run -v `pwd`/../artifacts/:/opt/out ringojs/buildservice
if [ $? -eq 0 ]; then
   echo "Build stage SUCCESSFUL"
else
   echo "Build stage FAILED"
   exit 1
fi;

# everything went fine
echo "DONE"
exit 0