#!/bin/bash
# === Update and install dependencies ===
sudo yum update -y
sudo yum install -y python3 python3-pip mariadb105

# === Go to your backend code directory ===
cd /root/Paytm-fullstack-project/Backend

# === Install Python dependencies ===
pip3 install -r requirements.txt

# === (Optional) Initialize database if not already done ===
# Replace <rds-endpoint> and <rds-password> with actual values
# mysql -h <rds-endpoint> -u admin -p<rds-password> < paytm.sql

# === Ensure Flask runs on all interfaces ===
# Your rds.py should contain:
# app.run(host="0.0.0.0", port=5000)

# === Start the Flask backend in background ===
nohup python3 rds.py > /var/log/backend.log 2>&1 &

# === Wait and log status ===
sleep 5
ps aux | grep rds.py >> /var/log/backend.log

echo "Backend started successfully on port 5000" >> /var/log/backend.log
