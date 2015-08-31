#!/usr/bin/python2.7

names = {}
streets = {}
phones = {}
towns = {}

with open("people.txt", "r") as f:
  for line in f:
    (key, name, street, town) = line.strip().split(",")
    names[key] = name
    streets[key] = street
    towns[key] = town
    phones[key] = {}

with open("phones.txt", "r") as f:
  for line in f:
    (key, type, number) = line.strip().split(",")
    phones[key][type] = number

for key in names:
  print names[key]
  print "%s, %s" % (streets[key], towns[key])
  phone_strings = []
  for type in phones[key]:
    phone_strings.append(phones[key][type])
  print ", ".join(phone_strings)
  print ""
