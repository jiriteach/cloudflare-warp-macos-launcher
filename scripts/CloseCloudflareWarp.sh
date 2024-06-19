#!/usr/bin/env bash
set -u

clear
echo -e "------------------------------------------"
echo -e "Cloudflare WARP MacOS Launcher 2.0"
echo -e "-- Developed By Jithen Singh (jxs@s7n.dev)"
echo -e "------------------------------------------\n"

unloadDaemon() {
    DAEMON_PLIST_PATH="/Library/LaunchDaemons/com.cloudflare.1dot1dot1dot1.macos.warp.daemon.plist"

	echo -e "Unloading & Stopping Cloudflare WARP Daemon ..."

    if [ -f "$DAEMON_PLIST_PATH" ]; then
    
        sudo launchctl unload -w "$DAEMON_PLIST_PATH"
        
        if [ $? -eq 0 ]; then
            echo -e "Cloudflare WARP Daemon Unloaded\n"
        else
            error=$(launchctl error $?)
            echo -e "ERROR - Unloading Cloudflare WARP Daemon. Error: ${error}\n"
            sudo pkill -x "CloudflareWARP" && echo -e "Force! - Cloudflare WARP Daemon Unloaded!\n"
        fi
        
    else

        sudo pkill -x "CloudflareWARP" && echo -e "Cloudflare WARP Stopped!\n"
    fi
}

checkAndKillGUIProcess() {
    echo -e "Stopping Cloudflare WARP GUI ...\n"

    pid=$(sudo pgrep "Cloudflare WARP")

    if [ $? -eq 0 ] && [ $pid -gt 0 ]; then
        echo -e "Found Cloudflare WARP GUI Running PID: ${pid}.";
        sudo pkill -x "Cloudflare WARP"
        
        if [ $? -eq 0 ]; then
            echo -e "Cloudflare WARP GUI Stopped!\n"
        else
            echo -e "ERROR - Stopping Cloudflare WARP Failed!\n"
        fi
    else
        echo -e "Cloudflare WARP GUI Not Running!\n"
    fi
}

checkAndKillGUIProcess
unloadDaemon

echo -e "Closing Cloudflare WARP Complete!\n"
killall Terminal
