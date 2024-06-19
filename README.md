<img src="https://www.cloudflare.com/img/logo-cloudflare.svg" width="150">  

# Cloudflare WARP (Zero Trust) MacOS Launcher

`Updated 20/06/2024` - Scripts replaced with MacOS applications created using Automator on MacOS. This provides a more native and cleaner experience. Previous scripts can be found under `/scripts`.

MacOS applications to launch and close the Cloudflare WARP (Zero Trust) client.

The Cloudflare WARP (Zero Trust) client does not support close when configured to use Cloudflare Zero Trust. 

These applications provide the ability to easily launch and close the client on MacOS.

## Requirements

* Cloudflare WARP client to be installed under `Applications`.  
The latest version of the client can be downloaded from - https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/warp/download-warp/.

* `resources/cfwarplauncher-sudoers.txt` - Used to bypass the need to enter `sudo` credentials everytime. Create a file `sudo touch /etc/sudoers.d/cfwarplauncher` and add the contents of this txt file.
When the applcation are launched - there will not be a prompt.  
NOTE - You cannot copy this file as it has to have the correct ownership so create the file first - `sudo touch /etc/sudoers.d/cfwarplauncher`.

## Setup
* `applications/Cloudflare Tools` - Contains two applications.  
`Cloudflare WARP Open.app`  
`Cloudflare WARP Close.app`  

Copy the `Cloudflare Tools` folder to `Applications` on MacOS.

* `applications/Cloudflare WARP Launcher.app` - The launcher which launches Cloudflare WARP via the open/close applications under Cloudflare Tools.

Copy the `Cloudflare WARP Launcher.app` to `Applications` on MacOS.

## Screenshots

<p align="center">
  <img src="/screenshots/screenshot%202024-06-20%20at%2009.50.56.png?raw=true" width="50%" />
  <img src="/screenshots/screenshot%202024-06-20%20at%2000.43.08.png?raw=true" width="50%" />
</p>

