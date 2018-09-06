![Image of Ether1Logo](https://github.com/Ether1Project/Ether-1-Branding/blob/master/PNG/Ether1-128x128.png?raw=true)

# **ETHER-1 MASTERNODE/SERVICE NODE SETUP TUTORIAL**

This guide will walk you through installing an Ether-1 Masternode or Service Node on a  on a Linux Server running Ubuntu 16.04

If you require further assistance contact the support team @ [Discord](https://discord.gg/Pr5rgmx)

The following video will walk you through the basics of setting up a VPS with Vultr. Most VPS service are similar but it is important to understand how to do it before moving forward: [Setting Up a VPS With Vultr](https://www.youtube.com/watch?v=jsP3K0D6ONE)



## **Minimum VPS Requirements:**

**Masternode**
- 40GB of available storage
- 2GB of ram
- Public Static IP address


**Service Node**
- 20GB of available storage
- 1GB of ram
- Public Static IP address


**Recomended VPS Services**
- [Vultr](https://www.vultr.com/?ref=7455585)


**Recommended OS**
- Ubuntu 16.04


## **Minimum Required Stake:**
- Service Node - 5000 ETHO*
- Masternode - 15000 ETHO*

*Please note that you will need slightly more than required stake to send verification transaction (0.01 ETHO)



# **ETHER-1 MASTERNODE/SERVICE NODE DEBIAN/UBUNTU SETUP TUTORIAL**

**STEP 1** -- Setup VPS and Install Ether-1 Masternode/Service Node Binary
It is not recommended to run the Ether-1 node as root so we will walk you through setting up a new username to run the Ether-1 Masternode/Service Node.

Some setup/house-cleaning while logged in as root:
```
apt-get install sudo
adduser ether1node
adduser ether1node sudo
adduser ether1node systemd-journal
```
You can now disconnect and re-login to your VPS with the newly created login and finish up with some additional house-cleaning:
```
sudo apt-get update
```
We will now download the Ether-1 Masternode/Service Node binary and create a system service to run the node:
```
sudo wget -N https://ether1.org/scripts/debian/setup.sh
```
**Now update file permissions and run script**
```
sudo chmod +x setup.sh
sudo ./setup.sh
```
*You may need to verify credentials by typing in your login password when script finishes setting up new system service

**Firewall configurations may vary but you will need to allow all traffic on ports 22 (SSH access) and 30305 (node traffic)

**Your node should now be installed/connected**

To view the status of the Ether-1 node:
```
sudo systemctl status ether1node
```
or
```
sudo journalctl --unit=ether1node -f
```


After syncing is complete, you will see the Masternode/Service Node connection note below

![Image of NodeConnected](https://nodes.ether1.org/images/nodeconnected.png)

**STEP 2** -- Login and Add New Node to Dashboard

Access Masternode/Service Node Gateway   [nodes.ether1.org](https://nodes.ether1.org)

Click on "Node Dashboard" button
![Image of NodeDashBoardButton](https://nodes.ether1.org/images/nodedashboardbutton.png)
Login With Your Email and Password

Click on "Add Node" button
![Image of AddNode](https://nodes.ether1.org/images/addnode.png)

## **Enter Required Information:**

**ETHO Address** -> This is the address where you hold your required ETHO node stake (5000 for Service Node or 15000 ETHO for Masternode)
                     *Please note that you will need slightly more than required stake to send verification transaction (0.01 ETHO)
                     
**IP Address** -> This is the static/public ip address of the VPS running the Ether-1 Masternode/Service Node binary

**Node Type** -> Select Masternode or Service Node

Click "Add Node" button
![Image of AddNode2](https://nodes.ether1.org/images/addnode2.png)


**STEP 3** -- Verify Ownership/Stake/Active Node

Click on "Details" of the newly added node
![Image of Detailsclick](https://nodes.ether1.org/images/detailsclick.png)

Make verification transaction to verify ETHO address ownership

Send a small amount of ETHO (0.01 ETHO) from ETHO address used when node was added to the randomly generated "Verification Address" shown in node details 

*Please note that this small amount of ETHO will remain in the verification account and will not be recoverable until a future update*

**DO NOT SEND YOUR ETHO STAKE TO THIS VERIFICATION ADDRESS!**
![Image of VerifyAddress](https://nodes.ether1.org/images/verifyaddress.png)

Copy TX hash from verification transaction and add to "Verification TX Hash" in node details
![Image of VerifyTX](https://nodes.ether1.org/images/verifytx.png)

Your node is verified when "Address Verified", "Stake Verified" and "Node Active" all show "Yes" for verified
![Image of AllVerified](https://nodes.ether1.org/images/allverified.png)

If "Stake Verified" or "Node Active" verifications fail, you can manually click "Verify"
![Image of StakeFailedVerify](https://nodes.ether1.org/images/stakefailedverify.png)

If "Address Verified" fails, you will need to delete node and start over

Congratulations! You have now setup a node. If you do not, please contact support and they will assist you.


If you found this setup guide helpful...

...please donate Ether-1/ETHO to: 0xF46E2D0D6aEb0acf4e203BB07d9b76E0C8a106c0

--KillSwitch
