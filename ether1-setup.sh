#!/usr/bin/env sh
_user="$(id -u -n)"

echo '**************************'
echo 'Installing misc dependencies'
echo '**************************'
# install dependencies
sudo apt-get update && sudo apt-get install systemd unzip wget -y

echo '**************************'
echo 'Installing Ether-1 Node binary'
echo '**************************'
# Download node binary

wget https://ether1.org/releases/Ether1-MN-SN-0.0.6.tar.gz

tar -xzf Ether1-MN-SN-0.0.6.tar.gz

# Make node executable
chmod +x geth

# Remove and cleanup
rm Ether1-MN-SN-0.0.6.tar.gz

echo '**************************'
echo 'Creating and setting up system service'
echo '**************************'

cat > /tmp/ether1node.service << EOL
[Unit]
Description=Ether1 Masternode/Service Node
After=network.target

[Service]

User=$_user
Group=$_user

Type=simple
Restart=always

ExecStart=/usr/sbin/geth --syncmode=fast --cache=512

[Install]
WantedBy=default.target
EOL
        sudo \mv /tmp/ether1node.service /etc/systemd/system
        sudo \cp geth /usr/sbin/
        sudo systemctl enable ether1node && systemctl start ether1node
        systemctl status ether1node --no-pager --full

echo 'Done.'

