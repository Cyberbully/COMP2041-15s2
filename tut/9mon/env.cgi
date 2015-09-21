#!/bin/sh

cat <<eof
Content-type: text/html

<html>
    <head>
        <title>HI GUIZE</title>
    </head> 
    <body>
        <marquee>Environment Variables</marquee>
        <pre>
`env`
        </pre>
    </body>
</html>
eof
