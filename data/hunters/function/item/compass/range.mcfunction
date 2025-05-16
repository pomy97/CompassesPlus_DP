#msg
$execute if entity @e[nbt={UUID:$(UUID)},limit=1,distance=..100] run title @s actionbar [{"text": "Target [","color": "gray"},{"selector": "@e[nbt={UUID:$(UUID)},limit=1,distance=..100]","color": "red"},{"text": "] is within 100 blocks","color": "gray"}]

#particles
$execute at @e[nbt={UUID:$(UUID)},limit=1,distance=..50] run particle minecraft:dust{color:[1,0,0],scale:0.5} ~ ~3 ~ 0 .25 0 0 10 force @s