#!/bin/sh

. ec2-config.sh

INSTANCETYPE="g2.8xlarge"
PRICE="0.70"
TYPE="persistent"

# Virginia:	ami-1bfe9d7e
# Subnets: 	us-east-1e: subnet-e0cf33dd
# 		us-east-1c: subnet-100b2f49
# 		us-east-1a: subnet-7cc08b57
# 		us-east-1b: subnet-5ca0a22b
#
IMAGE="ami-1bfe9d7e"
REGION="us-east-1"
DATAFILE="virginia.txt"
KEY="virgina"

SUBNET="subnet-e0cf33dd"
#L='{"ImageId":"ami-1bfe9d7e","InstanceType":"g2.8xlarge","NetworkInterfaces":[{"DeviceIndex":0,"SubnetId":"subnet-e0cf33dd","AssociatePublicIpAddress":true}]}'
#aws --region $REGION ec2 request-spot-instances --spot-price $PRICE --instance-count 1 --type $TYPE --launch-specification $L --user-data-file sydney.txt
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true

SUBNET="subnet-100b2f49"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true

SUBNET="subnet-7cc08b57"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true

SUBNET="subnet-5ca0a22b"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true

# Oregon: 	ami-4b796b7b
#		us-west-2a: subnet-0bd7017c
#		us-west-2b: subnet-6d962608
#		us-west-2c: subnet-bef700e7
#
IMAGE="ami-4b796b7b"
REGION="us-west-2"
DATAFILE="oregon.txt"
KEY="oregon"


SUBNET="subnet-0bd7017c"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true

SUBNET="subnet-6d962608"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true

SUBNET="subnet-bef700e7"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true




# California: 	ami-7747bc33
#		us-west-1b: subnet-b4d207d1
#		us-west-1a: subnet-51534617
#
IMAGE="ami-7747bc33"
REGION="us-west-1"
DATAFILE="california.txt"
KEY="california"


SUBNET="subnet-b4d207d1"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true

SUBNET="subnet-51534617"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true


# Ireland: 	ami-a14d6bd6
#		eu-west-1b: subnet-43802234
#		eu-west-1a: subnet-868005e3
#		eu-west-1c: subnet-4342851a
#
IMAGE="ami-a14d6bd6"
REGION="eu-west-1"
DATAFILE="ireland.txt"
KEY="ireland"


SUBNET="subnet-43802234"
ec2-request-spot-instances $IMAGE --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true

SUBNET="subnet-868005e3"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true

SUBNET="subnet-4342851a"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true


# Frankfurt: 	ami-86eced9b
#		eu-central-1a: subnet-79877610
#		eu-central-1b: subnet-f1b7a689
#
IMAGE="ami-86eced9b"
REGION="eu-central-1"
DATAFILE="frankfurt.txt"
KEY="frankfurt"


SUBNET="subnet-79877610"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true

SUBNET="subnet-f1b7a689"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true



# Singapore: 	ami-c0999292
#		ap-southeast-1b: subnet-ed0be39a
#		ap-southeast-1a: subnet-989440fd
#
IMAGE="ami-c0999292"
REGION="ap-southeast-1"
DATAFILE="singapore.txt"
KEY="singapore"


SUBNET="subnet-ed0be39a"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true

SUBNET="subnet-989440fd"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true


# Tokyo: 	ami-043db304
#		ap-northeast-1c: subnet-85e90edc
#		ap-northeast-1a: subnet-954487e2
#
IMAGE="ami-043db304"
REGION="ap-northeast-1"
DATAFILE="tokyo.txt"
KEY="tokyo"


SUBNET="subnet-85e90edc"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true

SUBNET="subnet-954487e2"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true


# Sydney: 	ami-4592de7f
#		ap-southeast-2a: subnet-d46392a3
#		ap-southeast-2b: subnet-a4c308c1
IMAGE="ami-4592de7f"
REGION="ap-southeast-2"
DATAFILE="sydney.txt"
KEY="sydney"


SUBNET="subnet-d46392a3"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true

SUBNET="subnet-a4c308c1"
ec2-request-spot-instances $IMAGE --key $KEY --region $REGION --user-data-file $DATAFILE --price $PRICE --instance-count 1 --type $TYPE --instance-type $INSTANCETYPE --subnet $SUBNET --associate-public-ip-address true

