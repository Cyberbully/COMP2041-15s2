#!/bin/sh

echo "Content-type: text/html"
echo ""

cat <<eof
<html>
<head></head>
<body>
<h2>GET STUFF</h2>
eof


echo $QUERY_STRING

cat <<eof
</body>
</html>
eof
