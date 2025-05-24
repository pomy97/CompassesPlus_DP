#> get item from slot 0
$execute if items entity @s container.0 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function on it
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 1
$execute if items entity @s container.1 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 2
$execute if items entity @s container.2 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:2b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:2b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 3
$execute if items entity @s container.3 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:3b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:3b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 4
$execute if items entity @s container.4 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:4b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:4b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 5
$execute if items entity @s container.5 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:5b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:5b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 6
$execute if items entity @s container.6 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:6b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:6b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 7
$execute if items entity @s container.7 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:7b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:7b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 8
$execute if items entity @s container.8 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 9
$execute if items entity @s container.9 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:9b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:9b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 10
$execute if items entity @s container.10 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:10b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:10b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 11
$execute if items entity @s container.11 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:11b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:11b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 12
$execute if items entity @s container.12 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:12b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:12b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 13
$execute if items entity @s container.13 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:13b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:13b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 14
$execute if items entity @s container.14 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:14b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:14b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 15
$execute if items entity @s container.15 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:15b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:15b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 16
$execute if items entity @s container.16 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:16b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:16b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 17
$execute if items entity @s container.17 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:17b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:17b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 18
$execute if items entity @s container.18 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:18b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:18b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 19
$execute if items entity @s container.19 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:19b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:19b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 20
$execute if items entity @s container.20 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:20b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:20b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 21
$execute if items entity @s container.21 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:21b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:21b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 22
$execute if items entity @s container.22 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:22b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:22b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 23
$execute if items entity @s container.23 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:23b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:23b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 24
$execute if items entity @s container.24 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:24b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:24b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 25
$execute if items entity @s container.25 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:25b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:25b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 26
$execute if items entity @s container.26 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:26b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:26b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 27
$execute if items entity @s container.27 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:27b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:27b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 28
$execute if items entity @s container.28 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:28b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:28b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 29
$execute if items entity @s container.29 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:29b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:29b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 30
$execute if items entity @s container.30 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:30b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:30b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 31
$execute if items entity @s container.31 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:31b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:31b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 32
$execute if items entity @s container.32 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:32b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:32b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 33
$execute if items entity @s container.33 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:33b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:33b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 34
$execute if items entity @s container.34 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:34b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:34b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from slot 35
$execute if items entity @s container.35 *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:35b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:35b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death

#> get item from offhand
$execute if items entity @s weapon.offhand *[custom_data~{hunters:{bounty_compass_data:{uuid:"$(target_uuid)"}}}] \
        if data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.hunters.bounty_compass_data.id \
        run data modify storage hunters:temp data.bounty_death.id set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.hunters.bounty_compass_data.id
# if item got, run function
execute if data storage hunters:temp data.bounty_death.id \
        run function hunters:item/bounty_compass/reward/resolve_bounty with storage hunters:temp data.bounty_death