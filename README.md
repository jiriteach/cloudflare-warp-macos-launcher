<img src="https://www.cloudflare.com/img/logo-cloudflare.svg" width="150">  

# Cloudflare WARP (Zero Trust) MacOS Launcher

`Updated 20/06/2024` - Scripts replaced with MacOS applications created using Automator on MacOS. This provides a more native and cleaner experience. Previous scripts can be found under `/scripts`.

<img src="/resources/cloudflarewarplauncher-icon.png" width="150">  

MacOS applications to launch and close the Cloudflare WARP (Zero Trust) client. 

The Cloudflare WARP (Zero Trust) client does not support close when configured to use Cloudflare Zero Trust. These applications provide the ability to easily launch and close the client on MacOS.

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

## Troubleshooting

### Launching and security

Since these are not created as fully published MacOS applications, there could be issues with launching and compatibility dependant on the MacOS version running.

If the Cloudlare WARP Launcher does not launch or the following message is displayed - 
```
"Cloudflare WARP Launcher" is damaged and can't be open. You should move it to the Trash.
``` 

- Open `Automator` on MacOS.
- Open `Cloudflare WARP Launcher.app` in `Automator` and `Run`.
- Save and exit `Automator`
- Repeat this process for `Cloudflare WARP Open.app` and `Cloudflare WARP Close.app`

Attempt to open `Cloudflare WARP Launcher.app` and MacOS will display the following security warning -   

<p align="center">
  <img src="/screenshots/screenshot%202024-06-20%20at%2010.30.16%E2%80%AFAM.png?raw=true" width="40%" />
</p>

- Click `OK`
- Goto `Settings` > `Privacy and Security` and scroll down to `Security`

<p align="center">
  <br/><img src="/screenshots/screenshot%202024-06-20%20at%2010.30.31%E2%80%AFAM.png?raw=true" width="50%" />
</p>

- Click `Open Anyway`
- Repeat this process for `Cloudflare WARP Open.app` and `Cloudflare WARP Close.app`

### Application icons

Since these are not created as fully published MacOS applications, application icons do not seem to carry across.

- Open `cloudflarewarplauncher-icon` in `Preview
- `Ctrl-A + Ctrl-C` to copy the image
- `Get Info` on `Cloudflare WARP Launcher.app`
- Click the icon in the top left and `Ctrl-V` to paste the copied image. This updates the `Cloudflware WARP Launch.app` applicationto show the icon. 