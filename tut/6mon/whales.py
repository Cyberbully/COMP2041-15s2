#!/usr/bin/python2.7 -u

import re
import sys

count = 0
string = ""

for line in sys.stdin:
  m = re.search("([0-9]+) (.*)", line)
  if m:
    curr = m.group(2)
    curr_count = int(m.group(1))

    if curr == string:
      count += curr_count
    else:
      if count > 0:
        print "%d %s" % (count, string)
      count = curr_count
      string = curr

if count > 0:
  print "%d %s" % (count, string)

