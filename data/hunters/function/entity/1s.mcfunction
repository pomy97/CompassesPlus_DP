# from func:clocks/1s
#
# @s = entity

execute as @s[type=#hunters:bounty_compass_trackable,tag=hu.bountied] run function hunters:entity/get_bounty_data

#execute as @s[predicate=hunters:item/bounty_compass_bound] run function hunters:entity/item/craft
