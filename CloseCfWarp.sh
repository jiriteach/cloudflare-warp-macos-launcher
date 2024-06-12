#!/usr/bin/env bash
set -u

clear
echo -e "--------------------------------------------------------"
echo -e "Cloudflare (Cf) WARP MacOS Launcher 1.2 ..."
echo -e "-- Developed By Jithen Singh (jxs@s7n.dev)"
echo -e "--------------------------------------------------------\n"

unloadDaemon() {
    DAEMON_PLIST_PATH="/Library/LaunchDaemons/com.cloudflare.1dot1dot1dot1.macos.warp.daemon.plist"

	echo -e "Unloading & Stopping CfWARP Daemon ..."

    if [ -f "$DAEMON_PLIST_PATH" ]; then
    
        sudo launchctl unload -w "$DAEMON_PLIST_PATH"
        
        if [ $? -eq 0 ]; then
            echo -e "CfWARP Daemon Unloaded\n"
        else
            error=$(launchctl error $?)
            echo -e "ERROR - Unloading CfWARP Daemon. Error: ${error}\n"
            sudo pkill -x "CloudflareWARP" && echo -e "Force! - CfWARP Daemon Unloaded!\n"
        fi
        
    else

        sudo pkill -x "CloudflareWARP" && echo -e "CfWARP Stopped!\n"
    fi
}

checkAndKillGUIProcess() {
    echo -e "Stopping CfWARP GUI ...\n"

    pid=$(sudo pgrep "Cloudflare WARP")

    if [ $? -eq 0 ] && [ $pid -gt 0 ]; then
        echo -e "Found CfWARP GUI Running PID: ${pid}.";
        sudo pkill -x "Cloudflare WARP"
        
        if [ $? -eq 0 ]; then
            echo -e "CfWARP GUI Stopped!\n"
        else
            echo -e "ERROR - Stopping CfWARP Failed!\n"
        fi
    else
        echo -e "CfWARP GUI Not Running!\n"
    fi
}

checkAndKillGUIProcess
unloadDaemon

echo -e "Closing CfWARP Complete!\n"
killall Terminal
