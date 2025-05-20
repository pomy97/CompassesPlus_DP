# from enchantment:bounty_compass
#
# @s = person who hit mob (the bountier)

# tellraw @a[tag=uthi.dev] [{"selector": "@s"},{"text":" - BC:Punched Mob"}]
# 
# #get my UUID using this fancy converter from github: https://github.com/Skubiak0903/Simple-UUID
# function su:convert with entity @s
# data modify storage hunters:temp new_bounty.bounty_UUID set from storage su:main out
# 
# #store bounty data
# function hunters:item/bounty_compass/bind/store_bounty_data with storage hunters:temp new_bounty
# # STORAGE: {new_bounty:{player:false/true, bounty_UUID:"uuid-mess-in-hyphened-hexidecimal", deaths:#, id:#, target_UUID:"uuid-mess-in-hyphened-hexidecimal"}}
# 
# #arm the COMPASSS
# function hunters:item/bounty_compass/bind/arm with storage hunters:temp new_bounty