data remove storage hunters:temp bounty_reward
data modify storage hunters:temp bounty_reward.bundle set from entity @n[predicate=hunters:item/filled_bundle] Item.components."minecraft:bundle_contents"
execute unless data storage hunters:temp bounty_reward.bundle run return fail
function hunters:item/bounty_compass/bounty/get_bundle_data with storage hunters:temp bounty_reward
function hunters:item/bounty_compass/bounty/store_container_slot with storage hunters:temp bounty_reward


        