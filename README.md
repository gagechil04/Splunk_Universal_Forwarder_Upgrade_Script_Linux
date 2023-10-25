# Splunk-Universal-Forwarder-Upgrade-Script-Linux

## Overview
<br>Run the script as root or a user with sudo priviliges, the script will assign assign the "Splunk" user/group the necessary permissions. If you are running your universal forwarder as a different user, please modify the script to reflect so.

<br />

## You will need to make a couple modifications within the script:
<br />• Copy/Paste a legitimate wget command from Splunk, I shortened the URL here for readability - (Line 5)
<br />• Paste the full file name of the tgz installer, you can reference your wget command to find this (Line 13)

<br />

## If you are running Splunk as a user other than "Splunk", make those changes to the following lines:
<br />• Line 9
<br />• Line 21

