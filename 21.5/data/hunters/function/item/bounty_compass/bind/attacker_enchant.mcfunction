# from enchantment:bounty_compass
#
# @s = person who hit mob (the bountier)

#get my UUID
function su:convert with entity @s
data modify storage hunters:temp data.new_bounty.rewarder_uuid set from storage su:main out

#store bounty data
function hunters:item/bounty_compass/bind/store_bounty_data with storage hunters:temp data.new_bounty

#arm the COMPASSS
function hunters:item/bounty_compass/bind/arm with storage hunters:temp data.new_bounty