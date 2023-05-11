#!/bin/env python3

import socket
import re

hostn = re.search(r"\d+", socket.gethostname())[0]
hosts = [f"192.168.{hostn}.{n}" for n in range(2, 251)]

print(",".join(hosts))
