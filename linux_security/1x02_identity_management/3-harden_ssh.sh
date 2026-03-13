#!/bin/bash
sed -i -E 's/^#?[[:space:]]*PermitRootLogin.*/PermitRootLogin no/' "$1"
sed -i -E 's/^#?[[:space:]]*PasswordAuthentication.*/PasswordAuthentication no/' "$1"
sed -i -E 's/^#?[[:space:]]*PubkeyAuthentication.*/PubkeyAuthentication yes/' "$1"

if sshd -t; then
    service ssh reload
fi