# Splunk-Universal-Forwarder-Upgrade-Script-Linux

## Overview
<br>Run as root, the script will assign assign the "Splunk" user/group the necessary permissions. If you are running your universal forwarder as a different user, please modify the script to reflect so.

<br />Note the lines below regarding the deployment server configuration, this can be removed/commented out if not applicable. The reason for using echo commands was due to issues with Splunk asking for the password after running "splunk set deploy-poll <IP_address/hostname>:<management_port>". 

<br />For the sake of simplicity and not storing passwords in plain text, echo gets it done in 2 lines :)
<br /><br />

## You will need to make a couple modifications within the script such as:
<br />• Pasting the IP Address of the Deployment Server you want the Cent Os host(s) to report to (Lines 31 & 32)
```
Echo the configurations into deploymentclient.conf
echo "[target-broker:deploymentServer]" >> /opt/splunkforwarder/etc/system/local/deploymentclient.conf &&
echo "targetUri = <DS IP ADDRESS>:8089" >> /opt/splunkforwarder/etc/system/local/deploymentclient.conf &&
```


<br />• Pasting the wget link for the installer from splunk (Line 9)
<br />• Pasting the accurate filename of the Splunk package .tgz (Line 13)
<br />• Pasting the same filename of the Splunk package .tgz (Line 17)
