#!/bin/bash
echo "[*] Setting up attacker VM..."

apt update
apt install -y git python3-pip

# Install Caldera
git clone https://github.com/mitre/caldera.git --recursive /opt/caldera
cd /opt/caldera
pip3 install -r requirements.txt

# Clone Atomic Red Team
git clone https://github.com/redcanaryco/atomic-red-team.git /opt/atomic-red-team

echo "[*] Attacker setup complete."
