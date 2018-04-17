#!/bin/bash

nuagenet=$1

ssh -oStrictHostKeyChecking=no 10.0.0.4 "neutron net-create testnet1 | neutron subnet-create testnet1 192.168.3.0/24 --name testsubnet1 --nuagenet $nuagenet --net-partition 'Company XYZ'"
