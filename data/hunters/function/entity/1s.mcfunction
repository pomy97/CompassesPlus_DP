# from func:clocks/1s
#
# @s = entity

execute as @s[type=#hunters:bounty_compass_trackable,tag=hu.bountied] \
        run function hunters:entity/get_bounty_data

#execute as @s[type=item] \
        if items entity @s contents *[bundle_contents~{items:{size:{min:1}}}] \
        run tag @s add hu.item.filled_bundle
        
#execute as @s[type=item] \
        if items entity @s contents *[custom_data~{"hunters": {"bounty_compass_data": {"bound": true, "active": true}}}] \
        at @s \
        align xyz \
        if block ~ ~-1 ~ crafting_table \
        run function hunters:entity/item/craft
