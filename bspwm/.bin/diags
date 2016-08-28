#!/usr/bin/env python
# -*- coding: utf-8 -*-

# ______ _ __ __ __ _
# / ____/____(_)___ ____ ___ ____ _____/ /__ / /_/ /_ (_)____
# / __/ / ___/ / __ \ / __ `__ \/ __ `/ __ / _ \ / __/ __ \/ / ___/
# / /___/ / / / /_/ / / / / / / / /_/ / /_/ / __/ / /_/ / / / (__ )
# /_____/_/ /_/\____/ /_/ /_/ /_/\__,_/\__,_/\___/ \__/_/ /_/_/____/

from random import choice
from sys import stdout as o
from time import sleep

cols = ['\033[30m', '\033[31m', '\033[32m', '\033[33m', '\033[34m', '\033[35m', '\033[36m', '\033[37m']
endcol = '\033[0m'
l = ''
ch = u"╱╲"

while True:
	l = "%s%s" % (choice(cols), choice(ch))
	o.flush()
	o.write(l)
	o.write(endcol)
	sleep(0.005)
