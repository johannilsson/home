#!/usr/bin/python
import string
from random import choice

print ''.join([choice(string.letters + string.digits) for i in range(24)])
