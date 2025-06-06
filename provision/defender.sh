#!/bin/bash
echo "[*] Setting up defender VM with ELK..."

apt update
apt install -y docker.io docker-compose git

# Clone and start ELK stack
git clone https://github.com/deviantony/docker-elk.git /opt/docker-elk
cd /opt/docker-elk
docker-compose up -d

echo "[*] Defender setup complete. ELK running on port 5601."
