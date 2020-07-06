#!/usr/bin/env bash

echo 'installation started .............................'

cd ../src

cd 1-prereq
# oc apply -f 01-namespace.yaml

cd ../2-channel
oc apply -f 11-channel.yaml
oc apply -f 21-deployable-web.yaml

cd ../3-subscription
oc apply -f 11-application.yaml
oc apply -f 21-placement.yaml
oc apply -f 31-subscription.yaml

echo 'installation completed .............................'
