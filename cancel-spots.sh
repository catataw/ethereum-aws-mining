#!/bin/sh
. ec2-config.sh

REGION=" "
ec2-describe-spot-instance-requests --region $REGION --filter "state=open" --filter "state=
active" | awk '{print $2}' | grep sir
