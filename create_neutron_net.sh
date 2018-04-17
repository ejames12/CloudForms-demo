#!/bin/bash

unset OS_SERVICE_TOKEN
    export OS_USERNAME=admin
    export OS_PASSWORD=password
    export OS_AUTH_URL=http://10.0.0.4:5000/v3
    export PS1='[\u@\h \W(keystone_admin)]\$ '

export OS_PROJECT_NAME=admin
export OS_USER_DOMAIN_NAME=Default
export OS_PROJECT_DOMAIN_NAME=Default
export OS_IDENTITY_API_VERSION=3

nuagenet=$1

neutron net-create testnet1
neutron subnet-create testnet1 192.168.3.0/24 --name testsubnet1 --nuagenet $nuagenet --net-partition 'Company XYZ'"
