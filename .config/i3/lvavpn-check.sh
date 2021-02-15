#!/bin/bash
if systemctl is-active --quiet lvavpn.service; then
	echo "<span color='#00FF00'>LVA VPN ON</span>"
else
	echo "<span color='#FF6961'>LVA VPN OFF</span>"
fi

