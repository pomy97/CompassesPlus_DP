#if target
execute if data entity @s SelectedItem.components."minecraft:custom_data".echoes.compass_data run function hunters:item/compass/check with entity @s SelectedItem.components."minecraft:custom_data".echoes.compass_data
execute if data entity @s SelectedItem.components."minecraft:custom_data".echoes.compass_data run function hunters:item/compass/range with entity @s SelectedItem.components."minecraft:custom_data".echoes.compass_data

#if no target
execute unless data entity @s SelectedItem.components."minecraft:custom_data".echoes.compass_data run title @s actionbar {"text": "No Target set","color": "gray"}