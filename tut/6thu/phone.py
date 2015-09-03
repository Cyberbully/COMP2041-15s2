#!/usr/bin/python2.7 -u

names = {}
addresses = {}
phones = {}

with open("people.txt", "r") as f:
  for line in f:
    (key, name, street, suburb) = line.strip().split(",")
    names[key] = name
    addresses[key] = "%s, %s" % (street, suburb)

with open("phones.txt", "r") as f:
  for line in f:
    (key, type, phone) = line.strip().split(",")
    if key not in phones:
      phones[key] = {}
    phones[key][type] = phone

for key in sorted(names):
  phones_str = "???"
  if key in phones:
    phones_array = []
    for type in phones[key]:
      phones_array.append("%s (%s)" % (phones[key][type], type))
    phones_str = ", ".join(phones_array)
  print "%s\n%s\n%s\n\n" % (names[key], addresses[key], phones_str)
