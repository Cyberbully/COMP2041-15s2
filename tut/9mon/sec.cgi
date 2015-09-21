#!/bin/sh

cat <<SADDAMHUSSEIN
Content-type: text/html

<h1>Execution Environment</h1>
SADDAMHUSSEIN

echo -n "pwd: "
pwd
echo -n "<br/>id: "
id
echo -n "<br/>hostname: "
hostname
echo -n "<br/>uname -a: "
uname -a
