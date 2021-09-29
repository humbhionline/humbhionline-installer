# Installation	

## HumbhiOnline installer repo 
    Clone the installer repo 
    git clone git@github.com:venkatramanm/humbhionline-installer.git
    
## Build all the repositories 
	$ cd humbhionline-installer 
    $ ./install.sh

## Configuring humbhionline property file.
_follow the comments and edit the property file given below. Most of the time, the defaults provided are good enough._

    $ vi application/humbhionline/overrideProperties/config/swf.properties
    


## To Start the application
    $ cd application/humbhionline
    $ bin/swfstart.real     

## Loading the starter db. 
    $ bin/loadstarterdb 
    
_It will take about 6-7 minutes to complete_
_You can check the progress by running_    
   
    $ grep worker tmp/java_info0.log.0| tail -1

_When you see the loading is complete, the output of the above command would be_

    INFO: Number of workers working 0


## Accessing the application 
* open your favourite browser and point  to http://localhost:4030/login/admin
* login with user as root and password as root
* Accept the terms & viola you are up!!

## What Next? 
1. You can use msg91 or 2f as your otp provider.
2. edit application/humbhionline/overrideProperties/config/swf.properties and configure it to use this otp provider 
3. Then login using phonenumber and otp via http://localhost:4030/login 
4. Once you have logged in You will be guided to create a profile. 
5. If you like to be a seller, you will asked to upload your KYC details (aadhar ekyc zip file downloaded for uidai website) 
6. KYC May be completed manually by logging in as root and viewing the pending Kyc page and approving seller pending KYC. 
7. Sellers need to go to sales menu and configure facilites and products sold from these facilities. Once configured, the facilites and products may be published and made available to customers. 

## Being part of [beckn](https://beckn.org) network. 
There are 2 independent options available to be part of a beckn network. 

1. Directly registering on a beckn network.
2. Registering on HumbhiOnline's network and be part of all beckn networks HumbhiOnline.in is part of.

_If you are part of a beckn network that humbhionline is also part of, you may be queried twice, once by your subscription to the beckn network and another via humbhionline which is also on the  same network. Typically you may want to be part of a beckn network via humbhionline.in because it would not need a different onboarding in each network and you can leverage on the subscriptions of humbhionline.in_ 






## FAQ? 
1. Can I test with out an otp provider.     
    Yes, only otp will not come to  your phone but you can see the otp via the admin portal  ( /login/admin ) (User root)
    To see the otp by visting /sign_ups 

     

        


    