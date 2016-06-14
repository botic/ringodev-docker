dpkg -i /opt/packages/ringojs*.deb

ringo -v
ringo -e "let strings = require('ringo/utils/strings'); java.lang.System.exit(strings.isFloat('1.0') ? 0 : 1);"
exit $?