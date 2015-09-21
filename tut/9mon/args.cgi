#!/bin/sh

cat <<eof
Content-type: text/html

<html>
    <head>
        <title>HI GUIZE</title>
    </head> 
    <body>
        <marquee>GET REKT</marquee>
        <pre>
eof

echo $QUERY_STRING;

cat <<eof
        </pre>
    </body>
</html>
eof
