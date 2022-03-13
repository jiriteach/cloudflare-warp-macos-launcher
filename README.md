# Cloudflare WARP (CfWARP) Launcher - MacOS

Scripts to launch and close the Cloudflare WARP application on MacOS. 
The application does not currently support exiting/closing the application. These scripts provide the ability to easily launch and close the application.

## Files & Information
OpenCfWarp.sh - Opens Cloudflare WARP application on MacOS. Uses terminal and will prompt for sudo credentials.

CloseCfWarp.sh - Closes Cloudflare WARP application on MacOS. Uses terminal and will prompt for sudo credentials.

CfWARP Launcher.zip - Directory with the above scripts and custom icons. Extract this to /applications.

cfwarplauncher-sudoers.txt - Used to bypass the need to enter sudo credentials everytime. Create a file /etc/sudoers.d/cfwarplauncher and add the contents of this txt file. When the scripts are launched - there will not be a prompt. NOTE - You cannot copy this file as it has to have the correct ownership so create the file first - sudo nano /etc/sudoers.d/cfwarplauncher.
