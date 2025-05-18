#msg
$execute if entity $(target_UUID) run title @s actionbar [{"text": "Target [","color": "gray"},{"selector": "$(target_UUID)","color": "red"},{"text": "] is within 100 blocks","color": "gray"}]

#particles
$execute at $(target_UUID) run particle minecraft:dust{color:[1,0,0],scale:0.5} ~ ~3 ~ 0 .25 0 0 10 force @s