#!/bin/bash
sudo mkdir -p /etc/sendip
sudo chown $USER:$USER -R /etc/sendip 
cp send_ip.sh /etc/sendip/send_ip
sudo chmod +x /etc/sendip/send_ip

cp send_ip.service $HOME/.config/systemd/user/.
sudo cp send_ip.timer /etc/systemd/system/.

systemctl link $HOME/.config/systemd/user/send_ip.service
systemctl daemon-reload
systemctl enable send_ip.timer


