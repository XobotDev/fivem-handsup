Config = {}

Config.animationDictionary = "missminuteman_1ig_2" -- The name of the animation dictionary
Config.gestureAnim = "handsup_enter" -- The name of the animation to play
Config.startGestureControl = 323 -- The control to start holding to initiate the gesture
Config.gestureCooldown = 5000 -- The cooldown between gestures (in milliseconds)

-- The controls to disable when the gesture is active
Config.disabledControls = {
    25, -- aim
    24, -- attack
    257, -- attack 2
    263, -- melee attack 1
    264, -- melee attack 2
    257, -- melee attack 3
    140, -- melee attack 4
    141, -- melee attack 5
    142, -- melee attack 6
    143, -- melee attack 7
}