#!/bin/bash
while read u; do id "$u" &>/dev/null && { sudo usermod -L "$u"; echo "User $u locked"; } || echo "User $u not found"; done < $1
