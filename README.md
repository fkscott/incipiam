# Incipiam
*To begin...*

Incipiam is a simple bash script that uses `launchctl` and `system_profiler` to open and close programs depending on whether my USB-C monitor is connected. 

I would like to thank reddit user `/u/quantam_libet` for the advice and code snippets to get me started. 

## Setting up launchd
If you'd like to adapt this script to fit your needs, fork this repo and use the `launchd_template.plist` file to get started.

Once you have a script you'd like to execute, put the modified `launchd_template.plist` file in `$HOME/Library/LaunchAgents` and load the new job with `$HOME/Library/LaunchAgents/launchd_template.plist`

After that, macOS will execute your script at intervals, even after restarts.

