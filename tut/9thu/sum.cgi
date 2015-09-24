#!/bin/sh

echo "Content-type: text/html"
echo ""

if [ $REQUEST_METHOD = "GET" ]
then
    parameters="$QUERY_STRING"
else
    parameters="`cat`"
fi

x="`echo "$parameters" | sed -r -e "s/.*x=([0-9]+).*/\1/"`"
y="`echo "$parameters" | sed -r -e "s/.*y=([0-9]+).*/\1/"`"

cat <<eof
<html>
<head></head>
<body>
<marquee>add 2 numbers!!!</marquee>

<form method="POST" action="">

<input type="textfield" name="x" value="$x">
+
<input type="textfield" name="y" value="$y">
=
eof

expr $x + $y

cat <<eof
<input type="submit" value="calculate">
</form>
eof


echo $parameters


cat <<eof
</body>
</html>
eof
