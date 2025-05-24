# Compasses+
A datapack that adds more compasses to the game!
Currently, it adds one compass that functions like a Lodestone Compass, except for entities!

# Credits
- **Simple-UUID** by **Skubiak0903**
  - [Project Github](https://github.com/Skubiak0903/Simple-UUID)
  - [Skubiak0903's Github](https://github.com/Skubiak0903)
- **Item Name to NBT** by **@DorkOrc**
  - [The discord message containing the code](https://discord.com/channels/154777837382008833/1275839527864500265/1276056392196816970)

If someone bounties a compass, create a new bounty ID
> You could use a player_killed_entity advancement with a condition checking if the player killed another player,
> then reward a function that checks who received a entity_killed_player advancement for which condition is being
> killed by a player, then do your things from these two contexts, and revoke both advancements during the process.
```hs
# check inventory for compasses
execute if items container.* *[custom_data~{uuid:"bar"}] \
        run function foo:check_inventory
# check offhand for compass (can immediately store this one as it's just one slot)
execute if items weapon.offhand *[custom_data~{uuid:"bar"}] \
        run function foo:get_offhand
```
function foo:check_inventory
```hs
#> check each slot individually
# get item from slot 0
execute if items container.0 *[custom_data~{uuid:"bar"}] \
        if data entity @s Inventory[{Slot:0b}].components."minecraft:custom_data".id \
        run data modify storage foo:temp id set from entity @s Inventory[{Slot:0b}].components."minecraft:custom_data".id
# if item got, run function on it
execute if data storage foo:temp id run function foo:do_something_with_the_id_of_smth_idk_what_to_name_this_i_ran_out_of_dummy_names

# get item from slot 1
execute if items container.1 *[custom_data~{uuid:"bar"}] \
        if data entity @s Inventory[{Slot:1b}].components."minecraft:custom_data".id \
        run data modify storage foo:temp id set from entity @s Inventory[{Slot:1b}].components."minecraft:custom_data".id
# if item got, run function
execute if data storage foo:temp id run function foo:do_something_with_the_id_of_smth_idk_what_to_name_this_i_ran_out_of_dummy_names

...
```
function foo:get_offhand
```hs
data modify storage foo:temp id set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".id
function foo:do_something_with_the_id_of_smth_idk_what_to_name_this_i_ran_out_of_dummy_names
```