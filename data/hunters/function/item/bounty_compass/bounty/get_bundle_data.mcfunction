# get array size
execute store result score #bundleSize hu.temp store result storage hunters:temp bounty_reward.size int 1 run data get storage hunters:temp bounty_reward.bundle
data modify storage hunters:temp bounty_reward.container set value []

#set slot data
execute store result storage hunters:temp bounty_reward.slot int 1 run scoreboard players set #slot hu.temp 0
function hunters:item/bounty_compass/bounty/store_container_data with storage hunters:temp bounty_reward

#$data modify storage hunters:bounty_storage bounty_storage.$(id).bounty_reward.container set from storage hunters:temp bounty_reward.container
#$data modify storage hunters:bounty_storage bounty_storage.$(id).bounty_reward.bundle set from storage hunters:temp bounty_reward.bundle