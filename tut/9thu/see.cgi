#!/bin/sh

echo "Content-type: text/html"
echo ""

cat <<eof
<html>
<head></head>
<body>
<h2>Execution Environment</h2>
eof

echo -n "pwd: "
pwd
echo -n "<br/>id: "
id
echo -n "<br/>hostname: "
hostname
echo -n "<br/>uname -a: "
uname -a

cat <<eof
</body>
</html>
eof
