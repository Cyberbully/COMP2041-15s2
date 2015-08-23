#!/usr/bin/python2.7 -u
import random

names = []
memes = []
with open('memes', 'r') as f:
  for l in f.readlines():
    memes.append(l.strip())
with open('names', 'r') as f:
  for l in f.readlines():
    names.append(l.strip())

taken = set()
for i in range(200):
  zid = random.randint(1000000, 2000000)
  while zid in taken:
    zid = random.randint(1000000, 2000000)
  taken.add(zid)

  print "%7d,%s,%d" % (zid, '%s %s' % (random.choice(names), random.choice(memes)), random.randint(0, 100))
