#! /bin/bash

#name of the display we're looking for
display_name="LG HDR WQHD"

#grab return values from pgrep
SCROLL_REVERSER_PID=$(pgrep "Scroll Reverser")
SIDE_BUTTONS_PID=$(pgrep "SensibleSideButtons")

# first check if the display is connected
if system_profiler SPDisplaysDataType | grep -q "${display_name}" ;
then
    # if the display is connected then check for the pid's of SensibleSideButtons and Scroll Reverser. launch them if they
    # aren't running.
    if [ "${SCROLL_REVERSER_PID}" == "" ] && [ "${SIDE_BUTTONS_PID}" == "" ]
    then
        open /Applications/SensibleSideButtons.app
        open /Applications/Scroll\ Reverser.app
    else
        exit 0
    fi

#If the monitor is disconnected and the processes are still running, kill the processes.
else
    kill $SCROLL_REVERSER_PID
    kill $SIDE_BUTTONS_PID

fi

exit 0