#!/usr/bin/env bash
apt update
apt upgrade -y
apt install snapd -y
snap install microk8s --classic --channel=1.21
