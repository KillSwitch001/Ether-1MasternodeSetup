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
