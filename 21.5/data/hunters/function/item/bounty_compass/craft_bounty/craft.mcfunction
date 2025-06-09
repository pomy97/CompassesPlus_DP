# from func 
#
# @s = compass item

# tag the bundle
tag @n[dx=1,type=item,tag=hu.item.filledBundle] add hu.this

# store bundle data
data remove storage hunters:temp data.reward
data modify storage hunters:temp data.reward.bundle set from entity @n[tag=hu.this] Item.components.minecraft:bundle_contents
execute unless data storage hunters:temp data.reward.bundle run return fail
data modify storage hunters:temp data.reward.uuid set from entity @s Item.components.minecraft:custom_data.hunters.bounty_compass_data.uuid
data modify storage hunters:temp data.reward.old_id set from entity @s Item.components.minecraft:custom_data.hunters.bounty_compass_data.id

#create a new bounty
execute store result storage hunters:temp data.reward.id int 1 run data get storage hunters:bounty_storage bounties
function hunters:item/bounty_compass/craft_bounty/copy_bounty_data with storage hunters:temp data.reward

# delete the bundle
kill @n[tag=hu.this]

# initial item modifier
item modify entity @s contents hunters:bounty_compass/bounty

# store reward data
function hunters:item/bounty_compass/craft_bounty/store_reward_data with storage hunters:temp data.reward

#clean up storage
data remove storage hunters:temp data.reward

#craft effects
tp @s ~.5 ~ ~.5
data merge entity @s {Motion:[0.0d,0.35d,0.0d]}
playsound block.smithing_table.use player @a ~ ~ ~
playsound entity.wither.spawn player @a ~ ~ ~ .5 2
particle item{ item: { id: compass, components: { "rarity": "rare", "enchantment_glint_override": true, "custom_model_data": { "strings": ["hunters:bounty_compass"] }}}} ~.5 ~.25 ~.5 .1 .1 .1 .05 10 normal