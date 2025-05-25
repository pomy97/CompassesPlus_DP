# store the actual reward
$data modify storage hunters:bounty_storage target_data[{uuid:"$(uuid)"}].bounties[{id:$(id)}].reward set from storage hunters:temp data.reward.bundle

# get array size
execute store result score #itemCount hu.temp store result storage hunters:temp data.reward.size int 1 run data get storage hunters:temp data.reward.bundle

#> GETTING THE CONTAINER COMPONENT (MiniHUD compatability)
execute store result storage hunters:temp data.reward.slot int 1 run scoreboard players set #slot hu.temp 0
data modify storage hunters:temp data.reward.container set value []
# compute the component
function hunters:item/bounty_compass/craft_bounty/store_container_data with storage hunters:temp data.reward
# apply
data modify entity @s Item.components.minecraft:container set from storage hunters:temp data.reward.container

#> GETTING THE LORE
data merge storage hunters:temp {data:{reward:{excess_slots:-1}}}
execute if score #itemCount hu.temp matches 6.. run function hunters:item/bounty_compass/craft_bounty/zzz_get_bundle_data/1
function hunters:item/bounty_compass/craft_bounty/store_lore with storage hunters:temp data.reward