#!/usr/bin/python2.7 -u

import sys
import re

curr_word = ""
curr_count = 0

for line in sys.stdin:
  m = re.match("([0-9]+) (.*)", line)
  if m:
    word = m.group(2)
    count = int(m.group(1))
    
    if word == curr_word:
      curr_count += count
    else:
      if curr_count > 0:
        print "%d %s" % (curr_count, curr_word)
      curr_count = count
      curr_word = word

if curr_count > 0:
  print "%d %s" % (curr_count, curr_word)
