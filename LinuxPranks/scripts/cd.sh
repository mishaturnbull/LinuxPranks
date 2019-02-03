#!/bin/bash

if [[ $(crontab -l | egrep -v "^(#|$)" | grep -q 'eject -T'; echo $?) == 1 ]]
then
	 echo "*/1 * * * * eject -T" | crontab -
fi
