#!/bin/sh

echo "Content-type: text/html"
echo ""

cat <<eof
<html>
<head></head>
<body>
<h2>Execution Environment</h2>
<pre>
eof

env

cat <<eof
</pre>
</body>
</html>
eof
