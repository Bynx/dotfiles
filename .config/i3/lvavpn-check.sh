#!/bin/bash
if systemctl is-active --quiet lvavpn.service; then
	echo LVA VPN
fi
