#create modifiable slot
summon minecraft:item_display ~ ~ ~ {Tags:["ec.compassItemStore"]}
item replace entity @n[type=item_display,tag=ec.compassItemStore] container.0 from entity @s weapon.mainhand

#Coordinates
#$data modify entity @e[type=item_display,distance=..0.000001,tag=ec.compassItemStore,limit=1,sort=nearest] item.components."minecraft:custom_data".echoes.compass_data.location.pos[0] set from entity @a[nbt={UUID:$(UUID)},limit=1] Pos[0]
#$data modify entity @e[type=item_display,distance=..0.000001,tag=ec.compassItemStore,limit=1,sort=nearest] item.components."minecraft:custom_data".echoes.compass_data.location.pos[1] set from entity @a[nbt={UUID:$(UUID)},limit=1] Pos[1]
#$data modify entity @e[type=item_display,distance=..0.000001,tag=ec.compassItemStore,limit=1,sort=nearest] item.components."minecraft:custom_data".echoes.compass_data.location.pos[2] set from entity @a[nbt={UUID:$(UUID)},limit=1] Pos[2]
#$execute store result entity @e[type=item_display,distance=..0.000001,tag=ec.compassItemStore,limit=1,sort=nearest] item.components."minecraft:custom_data".echoes.compass_data.location.pos[0] int 1 run scoreboard players get 75134295-1a8b-4925-b075-d4a645df5df3 ec.posX

$execute store result entity @n[type=item_display,tag=ec.compassItemStore] item.components."minecraft:lodestone_tracker".target.pos[0] double 1 run scoreboard players get @e[nbt={UUID:$(marker_UUID)},limit=1] ec.posX
$execute store result entity @n[type=item_display,tag=ec.compassItemStore] item.components."minecraft:lodestone_tracker".target.pos[1] double 1 run scoreboard players get @e[nbt={UUID:$(marker_UUID)},limit=1] ec.posY
$execute store result entity @n[type=item_display,tag=ec.compassItemStore] item.components."minecraft:lodestone_tracker".target.pos[2] double 1 run scoreboard players get @e[nbt={UUID:$(marker_UUID)},limit=1] ec.posZ


#Dimension
$execute if score @e[nbt={UUID:$(marker_UUID)},limit=1] ec.dimension = @s ec.dimension run data modify entity @n[type=item_display,tag=ec.compassItemStore] item.components."minecraft:lodestone_tracker".target.dimension set from entity @s Dimension
#replace mainhand item with updated compass
item replace entity @s weapon.mainhand from entity @e[type=item_display,distance=..0.000001,tag=ec.compassItemStore,limit=1,sort=nearest] container.0
#tellraw @s {"entity": "@s","nbt": "SelectedItem.components.\"minecraft:lodestone_tracker\""}

#delete slot
item replace entity @n[type=item_display,tag=ec.compassItemStore] container.0 with air
kill @n[type=item_display,tag=ec.compassItemStore]
#messages
$execute if score @e[nbt={UUID:$(marker_UUID)},limit=1] ec.dimension = @s ec.dimension run title @s actionbar [{"text": "Tracking Target","color": "gray"}]
$execute if score @e[nbt={UUID:$(marker_UUID)},limit=1] ec.dimension matches 0 run title @s actionbar [{"text": "Target is not in trackable dimension","color": "gray"}]
$execute unless score @e[nbt={UUID:$(marker_UUID)},limit=1] ec.dimension = @s ec.dimension unless score @e[nbt={UUID:$(marker_UUID)},limit=1] ec.dimension matches 4 run title @s actionbar [{"text": "Target is not in your dimension","color": "gray"}]
