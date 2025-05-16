#debug
$tellraw @a[tag=uthi.dev] [{"selector": "@s"},{"text":" - BC:Locked Target "},{"selector": "@n[nbt={UUID:$(UUID)}]"}]

#sounds
playsound minecraft:entity.warden.sonic_charge master @s ~ ~ ~ 1 2
playsound block.respawn_anchor.set_spawn master @s ~ ~ ~ 1 1

#tag target
$tag @n[nbt={UUID:$(UUID)}] add ec.bountied
$tag @n[nbt={UUID:$(UUID)}] add ec.this
#create modifiable slot
summon minecraft:item_display ~ ~ ~ {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]},Tags:["ec.compassItem"]}
item replace entity @n[type=item_display,tag=ec.compassItem] container.0 from entity @s weapon.mainhand

#add NBT to compass
item modify entity @n[type=item_display,tag=ec.compassItem] container.0 hunters:compass/arm
$data modify entity @n[type=item_display,tag=ec.compassItem] item.components."minecraft:custom_data".echoes.compass_data.UUID set value $(UUID)
$data modify entity @n[type=item_display,tag=ec.compassItem] item.components."minecraft:custom_data".echoes.compass_data.marker_UUID set value $(marker_UUID)
$execute as @n[type=item_display,tag=ec.compassItem] store result entity @s item.components."minecraft:custom_data".echoes.compass_data.deaths int 1 run scoreboard players get @e[nbt={UUID:$(UUID)},limit=1] ec.deaths
data modify entity @n[type=item_display,tag=ec.compassItem] item.components."minecraft:custom_data".echoes.compass_data.tracker_UUID set from entity @s UUID
execute as @n[type=item_display,tag=ec.compassItem] run function hunters:item/compass/info_target with entity @s item.components."minecraft:custom_data".echoes.compass_data

$tag @n[nbt={UUID:$(UUID)}] remove ec.this

#data modify entity @e[type=item_display,distance=..0.000001,tag=ec.compassItem,limit=1,sort=nearest] item.components."minecraft:custom_data".echoes.compass_data.UUID set from entity @s UUID
item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=ec.compassItem] container.0

#remove slot
kill @n[type=item_display,tag=ec.compassItem]