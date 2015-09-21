#!/bin/sh

arguments=$QUERY_STRING
if [ $REQUEST_METHOD = "POST" ]
then
    arguments="`cat`"
fi

x="`echo $arguments | sed -r -e 's/.*x=([0-9]+).*/\1/'`"
y="`echo $arguments | sed -r -e 's/.*y=([0-9]+).*/\1/'`"
if [ $x ] && [ $y ]
then
    ans=`expr $x + $y`
fi
cat <<eof
Content-type: text/html

<html>
    <head>
        <title>HI GUIZE</title>
    </head> 
    <body>
        <marquee>GET REKT</marquee>
    

        <form method="POST" action="">
            <input type="textfield" name="x" value="$x">
            <input type="textfield" name="y" value="$y">
            <input type="submit" value="calculate">
            = $ans
        </form>

        <pre>
eof

echo "x=$x,y=$y";

cat <<eof
        </pre>
    </body>
</html>
eof
