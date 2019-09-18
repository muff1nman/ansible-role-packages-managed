#! /bin/sh
#
# gpg_fingerprint.sh
# Copyright (C) 2016 andrew <andrew@whosyourdaddy.demariafamily.net>
#
# Distributed under terms of the MIT license.
#

gpg --throw-keyids "$1" | sed -n '/^pub/s|^[^/]*/\([[:alnum:]]*\) .*|\1|p' | tr [[:upper:]] [[:lower:]]
