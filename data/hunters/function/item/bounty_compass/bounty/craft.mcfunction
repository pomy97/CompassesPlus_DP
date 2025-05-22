# from func 
#
# @s = compass item

# tag the bundle
tag @n[dx=1,type=item,tag=hu.item.filled_bundle] add hu.this

# store bundle data
data remove storage hunters:temp data.reward
data modify storage hunters:temp data.reward.bundle set from entity @n[tag=hu.this] Item.components.minecraft:bundle_contents
execute unless data storage hunters:temp data.reward.bundle run return fail
data modify storage hunters:temp data.reward.id set from entity @s Item.components.minecraft:custom_data.hunters.bounty_compass_data.id

# delete the bundle
kill @n[tag=hu.this]

#convert "bundle_contents" component into "container" component + store it. Also store the bundle data AS the reward.
# did I mention the whole container thing is just to add compatability with MiniHUD? Who would've guessed?
function hunters:item/bounty_compass/bounty/get_bundle_data with storage hunters:temp data.reward

function hunters:item/bounty_compass/bounty/prep_data_store with storage hunters:temp data.reward