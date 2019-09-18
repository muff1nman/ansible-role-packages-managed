#! /bin/sh
#
# rpm_check_import.sh
# Copyright (C) 2016 andrew <andrew@whosyourdaddy.demariafamily.net>
#
# Distributed under terms of the MIT license.
#

FINGERPRINT=$(/usr/local/bin/gpg_fingerprint.sh "$1")
rpm -qi gpg-pubkey-$FINGERPRINT-\* > /dev/null 2>&1
