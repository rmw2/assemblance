#! /usr/bin/python
# -*- coding: utf8 -*-
# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4
# author: yanfeng.wyf
# personal email: wuyanfeng@yeah.net


import struct

def get_uleb128p1(content):
	n,value = get_uleb128(content)
	value -= 1
	return value

def get_uleb128(content):
	""" UNSIGNED LEB128 """
	value = 0
	for i in range(0,5):
		tmp = ord(content[i]) & 0x7f
		value = tmp << (i * 7) | value
		if (ord(content[i]) & 0x80) != 0x80:
			break

	if i == 4 and (tmp & 0xf0) != 0:
		print("parse a error uleb128 number")
		return -1

	return value

def get_leb128(content):
	""" SIGNED LEB128 """

	value = 0

	mask = [0xffffff80,0xffffc000,0xffe00000,0xf0000000,0]
	bitmask = [0x40,0x40,0x40,0x40,0x8]
	value = 0

	for i in range(0,5):
		tmp = ord(content[i]) & 0x7f
		value = tmp << (i * 7) | value
		if (ord(content[i]) & 0x80) != 0x80:
			if bitmask[i] & tmp:
				value |= mask[i]
			break

	if i == 4 and (tmp & 0xf0) != 0:
		print("parse a error uleb128 number")
		return -1

	buf = struct.pack("I",value)
	value = struct.unpack("i", buf)

	return value