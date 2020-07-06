#!/usr/bin/env bash

echo 'un-installation started .............................'

cd ../src

cd 3-subscription
oc delete -f 31-subscription.yaml
oc delete -f 21-placement.yaml 
oc delete -f 11-application.yaml

cd ../2-channel
oc delete -f 21-deployable-web.yaml
oc delete -f 11-channel.yaml 

cd ../1-prereq
oc delete -f 01-namespace.yaml 

echo 'un-installation completed .............................'
