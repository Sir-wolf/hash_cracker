#!/usr/bin/python3

import hashlib 

password = input('Enter your MD5 hash : ')
passwordlist = input('Enter your list : ')

passwordlist_read = open(passwordlist, 'r')

for line in passwordlist_read :
	line = line.strip()
	if hashlib.md5(line).hexdigest() == password :
		print ('hash cracked : ',line)
	else : 
		print('hash not cracked')