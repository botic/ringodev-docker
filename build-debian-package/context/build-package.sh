# install ivy
cd /opt/context/apache-ivy/
ant

# prepare ringojs
git clone https://github.com/botic/ringojs.git /opt/ringojs
cd /opt/ringojs/

# prepare
ant update
ant dpkg
echo "Copy files ..."
cp /opt/*.deb /opt/out
echo "Done"