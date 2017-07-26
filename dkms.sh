#!/bin/bash
 DRV_NAME=rtl8812AU
 DRV_VERSION=5.1.5
 mkdir /usr/src/${DRV_NAME}-${DRV_VERSION}
 cp -r . /usr/src/${DRV_NAME}-${DRV_VERSION}
 dkms add -m ${DRV_NAME} -v ${DRV_VERSION}
 dkms build -m ${DRV_NAME} -v ${DRV_VERSION}
 dkms install -m ${DRV_NAME} -v ${DRV_VERSION}
