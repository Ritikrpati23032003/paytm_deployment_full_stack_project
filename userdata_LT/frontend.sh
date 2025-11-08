#!/bin/bash
# ===== Backend Setup Script (without git clone) =====
yum update -y
yum install -y python3 python3-pip

cd /root/Paytm-fullstack-project/Backend

# Install dependencies
pip3 install -r requirements.txt

# Start backend
nohup python3 rds.py > backend.log 2>&1 &
#!/bin/bash
# ===== Frontend Setup Script (without git clone) =====
yum update -y
yum install -y httpd

cd /root/Paytm-fullstack-project/Frontend/Frontend-code
cp -r * /var/www/html/

systemctl start httpd
systemctl enable httpd
