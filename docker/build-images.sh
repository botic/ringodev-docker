# build buildservice
docker build -t ringojs/buildservice buildservice/
if [ $? -eq 0 ]; then
   echo "buildservice image SUCCESS"
else
   echo "buildservice image ERROR"
   exit 1
fi;

# build package test image
docker build -t ringojs/buildtests buildtests/
if [ $? -eq 0 ]; then
   echo "buildtests image SUCCESS"
else
   echo "buildtests image ERROR"
   exit 2
fi;

echo "Built all images."
exit 0