# from enchantment:bounty_compass
#
# @s = person holding compass

#store ID
data modify storage hunters:temp data.tracking_data.id \
    set from entity @s SelectedItem.components.minecraft:custom_data.hunters.bounty_compass_data.id
data modify storage hunters:temp data.tracking_data.target_uuid \
    set from entity @s SelectedItem.components.minecraft:custom_data.hunters.bounty_compass_data.uuid

function hunters:item/bounty_compass/track/get_bounty_data with storage hunters:temp data.tracking_data

#data remove storage hunters:temp data.tracking_data