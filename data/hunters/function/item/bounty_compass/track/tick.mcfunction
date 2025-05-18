# from enchantment:bounty_compass
#
# @s = person holding compass

#store ID
data modify storage hunters:temp tracking_data.id \
    set from entity @s SelectedItem.components."minecraft:custom_data".hunters.bounty_compass_data.id

function hunters:item/bounty_compass/track/get_bounty_data with storage hunters:temp tracking_data

#data remove storage hunters:temp tracking_data