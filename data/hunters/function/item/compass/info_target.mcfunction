#check if player
$execute if entity @a[nbt={UUID:$(UUID)},limit=1] run data modify entity @s item.components."minecraft:custom_data".echoes.compass_data.player set value 1b
$execute if entity @e[nbt={UUID:$(UUID)},type=!player,limit=1] run data modify entity @s item.components."minecraft:custom_data".echoes.compass_data.player set value 0b

$execute if data entity @s item.components."minecraft:custom_data".echoes.compass_data{player:1b} store result entity @s item.components."minecraft:custom_data".echoes.compass_data.deaths int 1 run scoreboard players get @a[nbt={UUID:$(UUID)},limit=1] ec.dead

#tag tracked entity
$tag @e[nbt={UUID:$(UUID)},type=!player,limit=1] add ec.tracked

#store in tracked entities
$data modify storage hunters:tracked_entities $(UUID) set value {player: $(player), tracker: $(tracker_UUID)}
$data modify storage hunters:tracked_entities $(UUID) set value {player: $(player), deaths: $(deaths), tracker: $(tracker_UUID)}