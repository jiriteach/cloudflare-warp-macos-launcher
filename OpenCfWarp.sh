#!/usr/bin/env bash
set -u

clear
echo -e "--------------------------------------------------------"
echo -e "Cloudflare (Cf) WARP MacOS Launcher 1.2 ..."
echo -e "-- Developed By Jithen Singh (jxs@s7n.dev)"
echo -e "--------------------------------------------------------\n"

loadDaemonAndApplication() {
    DAEMON_PLIST_PATH="/Library/LaunchDaemons/com.cloudflare.1dot1dot1dot1.macos.warp.daemon.plist"
DAEMON_BINARY_PATH="/Applications/Cloudflare WARP.app"
    
    echo -e "Loading CfWARP Daemon ..."
    sudo launchctl load -w "$DAEMON_PLIST_PATH"
    
    echo -e "Loading CfWARP Application ...\n"
    sudo open -a "$DAEMON_BINARY_PATH"
}

loadDaemonAndApplication

echo -e "Loading CfWARP Complete!\n"
killall Terminal
