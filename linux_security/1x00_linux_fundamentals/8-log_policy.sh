#!/bin/bash
chgrp "$2" "$1" && chmod g+s,o-rwx "$1" && printf "%s/*.log {\n\tcreate 0640 root %s\n}" "$1" "$2" > /etc/logrotate.d/app