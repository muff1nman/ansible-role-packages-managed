#! /bin/sh
#
# rpm_import.sh
# Copyright (C) 2016 andrew <andrew@whosyourdaddy.demariafamily.net>
#
# Distributed under terms of the MIT license.
#


/usr/local/bin/rpm_check_import.sh "$1"
if [[ $? == "1" ]];
then
	rpm --import "$1"
else
	exit 170
fi
