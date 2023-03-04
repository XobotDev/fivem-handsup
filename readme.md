**Handsup Gesture Script:**
This is a FiveM script that allows players to perform a hands-up gesture. The gesture is triggered by pressing the X key and can be used to signal to other players that you are surrendering or to add some roleplay immersion to your interactions.

**Installation:**
Download the script files and place them in your FiveM server's resource folder.
Add the following line to your server.cfg file: start handsup-gesture.
Usage
To perform the hands-up gesture, press the X key while not in a vehicle. This will trigger the animation and disable your ability to aim or attack while the gesture is active.

To exit the gesture, press the X key again. This will cancel the animation and restore your ability to aim and attack.

Note that if you enter a vehicle while the gesture is active, it will automatically cancel the animation and restore your ability to aim and attack.

**Configuration:**
`gestureDict:` The name of the animation dictionary to use for the gesture.
`gestureName:` The name of the animation to use for the gesture.
`gestureDuration:` The length of time in milliseconds that the gesture should be active for.
`disableAimControls:` Whether or not to disable aiming controls while the gesture is active. Default is true.
`disableAttackControls:` Whether or not to disable attack controls while the gesture is active. Default is true.
`disableMovementControls:` Whether or not to disable movement controls while the gesture is active. Default is false.
`disableVehicleEntryControls:` Whether or not to disable vehicle entry controls while the gesture is active. Default is false.
`disableVehicleExitControls:` Whether or not to disable vehicle exit controls while the gesture is active. Default is false.
`disableSprintControl:` Whether or not to disable the sprint control while the gesture is active. Default is false.
`disableJumpControl:` Whether or not to disable the jump control while the gesture is active. Default is false.
`disableSwitchSeatControls:` Whether or not to disable switch seat controls while the gesture is active. Default is false.
`disableMeleeControls:` Whether or not to disable melee controls while the gesture is active. Default is false.
`disableRadioControls`: Whether or not to disable radio controls while the gesture is active. Default is false.
`disablePhoneControls:` Whether or not to disable phone controls while the gesture is active. Default is false.
Note: Setting any of these options to true will disable the corresponding controls while the gesture is active. To enable the controls again, the gesture must be cancelled by pressing the gesture key again.

**Credits:**
This script was created by NotXobot. Feel free to use it and modify it as you see fit. If you find any bugs or issues, please report them to https://discord.gg/nPH9StDMHR 