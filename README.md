Creating master [ETHO] Ether-1

To create, we need:

1) 5001 ETHO (servodna) or 15001 ETHO (masterwork)

2) VPS (or any PC with static IP and uptime 100%)


Buy ETHO can be on the exchange stocks.exchange or namainit most on the pool .


VPS is cheaper to rent from the provider artdoe.gq/vps . The method of recharging the balance for new users is a card and PayPal, subsequent payments can be made through Bitcoin.


Our option is the VPS for $ 5 per month, this will be quite enough for our master.


Next, we choose any shower location, Ubuntu OS 16.04 x64 , register the host name and the server name "ether1" at # 7.


Click Deploy Now and look forward to installing VPS.


During installation, in parallel, swing Putty to connect SSH to our server.


VPS Control Panel
When our VPS is ready to open Putty and enter the IP of our server there. Click "enter".


Putty
In the black window that appears, enter the root login and press "enter". Next, copy the password from the VPS control panel and right-click it into Putty, the password will not be displayed in any way, just paste and press "enter".


Now enter the following commands in turn:

mkdir ether1

cd ether1

sudo wget -N https://github.com/KillSwitch001/Ether-1MasternodeSetup/blob/master/ether1-setup.sh

sudo chmod +x ether1-setup.sh

sudo ./ether1-setup.sh


We launch our master:


sudo systemctl start ether1node

Now go to the site https://nodes.ether1.org/signup.php and register an account. On the main page, click "Add node" .

Cabinet of users.ether1.org

Enter your purse (on which 5000 or 15000 ETHO), the IP address of the VPS and the node type, click "Add node".

Cabinet of users.ether1.org

Next, we need to confirm your purse by clicking Details.

Cabinet of users.ether1.org

Copyable Verification Address.

Now we go to the wallet https://wallet.ether1.org and send 0.01 ETHO to the generated verification wallet (Verification Address).

Web Wallet https://wallet.ether1.org

After the transfer, copy the hash transaction, paste it into the field "Verification TX Hash" and click "Add":

Cabinet of users.ether1.org

Cabinet of users.ether1.org

Master is set up!
