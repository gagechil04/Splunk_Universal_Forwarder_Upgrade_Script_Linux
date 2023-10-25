#!/bin/bash

## Downloading the Splunk Universal Forwarder Software
cd /tmp &&
wget -O splunkforwarder-9.1.1-Linux-x86_64.tgz "https://download.splunk.com/products/universalforwarder/releases/9.1.1/linux/splunkforwarder-9.1.1-Linux-x86_64.tgz" &&
sleep 30

## Assign Splunk permissions to installer
chown -R splunk:splunk /tmp/splunkforwarder-9.1.1-Linux-x86_64.tgz &&
sleep 5

## Stopping the Splunkd service
sudo /opt/splunkforwarder/bin/splunk stop &&
sleep 60

## Extract new version of Splunk
sudo tar -zxvf /tmp/splunkforwarder-9.1.1-Linux-x86_64.tgz -C /opt &&
sleep 25

#Assign Splunk permissions to the "splunkforwarder" directory
chown -R splunk:splunk /opt/splunkforwarder &&

#Install new Splunk version
/opt/splunkforwarder/bin/splunk start --accept-license --answer-yes --no-promt --SPLUNKUSERNAME=splunk --gen-and-print-passwd &&
sleep 40

