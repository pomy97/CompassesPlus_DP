# get array size
execute store result score #bundleSize hu.temp store result storage hunters:temp data.reward.size int 1 run data get storage hunters:temp data.reward.bundle
data modify storage hunters:temp data.reward.container set value []

#set slot data
execute store result storage hunters:temp data.reward.slot int 1 run scoreboard players set #slot hu.temp 0
function hunters:item/bounty_compass/bounty/store_container_data with storage hunters:temp data.reward

# Store it
#$data modify storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].compass_data.container set from storage hunters:temp data.reward.container
# Whilst we're at it, store the actual reward too.
#$data modify storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].reward set from storage hunters:temp data.reward.bundle