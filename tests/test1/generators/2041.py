#!/usr/bin/python2.7 -u

import random
import string

def write_random(f):
  for x in range(random.randint(10, 300)):
    f.write("%s\n" % "".join([random.choice(string.letters + " ") for y in range(random.randint(10, 100))]))

for x in range(10):
  with open('testfile_%x.2041' % (x), 'w') as f:
    write_random(f)

with open('testfile_file has space in name.2041', 'w') as f:
  write_random(f)
