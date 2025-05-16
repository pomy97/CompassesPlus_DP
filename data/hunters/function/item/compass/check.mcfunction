$scoreboard players set #temp ec.deaths $(deaths)
$execute if score @e[nbt={UUID:$(UUID)},limit=1] ec.deaths > #temp ec.deaths run say mate is dead
$execute if entity @e[nbt={UUID:$(UUID)},limit=1] run function hunters:item/compass/store with entity @s SelectedItem.components."minecraft:custom_data".echoes.compass_data
$execute unless entity @e[nbt={UUID:$(UUID)},limit=1] run title @s actionbar [{"text": "Target is not trackable","color": "gray"}]