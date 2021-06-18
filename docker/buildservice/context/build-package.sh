# prepare ringojs
git clone https://github.com/ringo/ringojs.git /opt/ringojs
cd /opt/ringojs/

# prepare
./gradlew
echo "Built packages"
cp /opt/ringojs/build/distributions/*.zip /opt/out
cp /opt/ringojs/build/distributions/*.tar.gz /opt/out
echo "Copied files"

# checksums
RINGO_VERSION=`/opt/ringojs/bin/ringo -e "const engine = require('ringo/engine'); print(engine.version.join('.'));"`
cd /opt/out
sha256sum ringojs* 1> SHASUMS256-`echo $RINGO_VERSION`.txt
echo "Generated SHA-256 checksums"