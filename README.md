<img src="https://www.cloudflare.com/img/logo-cloudflare.svg" width="150">  

# Cloudflare WARP (Zero Trust) MacOS Launcher

MacOS Scripts to launch and close the Cloudflare WARP (Zero Trust) client.

The latest version of the client can be downloaded from - https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/warp/download-warp/

Once installed - the Cloudflare WARP (Zero Trust) client does not support close when configured to use Cloudflare Zero Trust. These scripts provide the ability to easily launch and close the client on MacOS.

## Files & Information
* `OpenCfWarp.sh` - Opens Cloudflare WARP (Zero Trust) client. Uses terminal to execute then open and will prompt for `sudo` credentials.

* `CloseCfWarp.sh` - Closes Cloudflare WARP client. Uses terminal to execute the close and will prompt for `sudo` credentials.

* `CfWARP Launcher.zip` - Directory with the above scripts and custom icons. Extract this to `/applications`.

* `cfwarplauncher-sudoers.txt` - Used to bypass the need to enter `sudo` credentials everytime. Create a file `sudo touch /etc/sudoers.d/cfwarplauncher` and add the contents of this txt file.
When the scripts are launched - there will not be a prompt. NOTE - You cannot copy this file as it has to have the correct ownership so create the file first - `sudo touch /etc/sudoers.d/cfwarplauncher`.
