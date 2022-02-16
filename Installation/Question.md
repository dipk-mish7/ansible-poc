# Hi, I'm Deepak! I am doing Ninja Training with Opstree Solutions.👋

[@ninja_deepak](https://gitlab.com/ninja_deepak)


### Topics to be Covered:
    Installing Ansible using pip, yum or apt
    Automating Ansible Installation
    Configuration file basics

What You Will Learn:
How easy it is to install and configure Ansible for yourself.


## Assignment:

### Create a utility to install ansible   
- By Default it should install latest version
- but user can give other version as well
- Make sure that all validations are in place. i.e if version mismatch then upgrade should happend if already install then error will be shown.


### Create separate inventory file for each ninja groups (rrr,avengers)
- By default if I run ping command then my controls server should ping servers of my ninja group.
![](Capture.PNG)

## Also I should be able to ping a specicic ninja group users servers.
![](Capture1.PNG)

### We have achieved this by doing changes in ansible.cfg file.
![](Capture2.PNG)


## Do further modification where I can only ping my ninja group servers sequentially, wehreas other  ninja group servers can be pinged simultaneously.
![](Capture5.PNG)

## we have achieved this task by changing fork value to 1 so that my ninja groups are pinged sequentially one by one.
![](Capture6.PNG)


## If I run ansible as command, PING module should get called. $ ansible
![](Capture4.PNG)

### We have achieved this again by changing ansible.cfg file.
![](Capture3.PNG)


- Analyse atleast 2 parameters in config file