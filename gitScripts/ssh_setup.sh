#!/usr/bin/env bash

mkdir -p ~/.ssh/
cd ~/.ssh/

echo "Enter your email: "
read email

ssh-keygen -t ed25519 -C "${email}"

key < ~/.ssh/id_ed25519.pub

echo $key

