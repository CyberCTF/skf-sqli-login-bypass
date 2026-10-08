#!/bin/sh
# The login form posts a username and a password to /login.
set -e
H=http://web:5000
P=$(curl -fsS "$H/")
echo "$P" | grep -q 'action="/login"'
echo "$P" | grep -q 'name="password"'
