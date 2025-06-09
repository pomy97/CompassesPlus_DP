# from func:clocks/1s
#
# @s = entity

execute as @s[type=#hunters:bounty_compass_trackable,tag=hu.bountied] \
        run function hunters:entity/get_bounty_data

#tag items
execute as @s[type=item] \
        if items entity @s contents *[bundle_contents~{items:{size:{min:1}}}] \
        run tag @s add hu.item.filledBundle

execute as @s[type=item] \
        if items entity @s contents compass[custom_data~{"hunters": {"item": 'bounty_compass'}}] \
        unless items entity @s contents *[custom_data~{"hunters": {"bounty_compass_data": {"bound": true}}}] \
        run tag @s add hu.item.unboundBountyCompass

#> Crafting
# Reward Compass
execute as @s[type=item] \
        if items entity @s contents compass[custom_data~{"hunters": {"bounty_compass_data": {"bound": true, "active": true, "reward":false}}}] \
        at @s \
        align xyz \
        if block ~ ~-1 ~ crafting_table \
        if entity @n[dx=1,type=item,tag=hu.item.filledBundle] \
        run function hunters:item/bounty_compass/craft_bounty/craft

#Clone Compass
execute as @s[type=item] \
        if items entity @s contents compass[custom_data~{"hunters": {"bounty_compass_data": {"bound": true, "active": true}}}] \
        at @s \
        align xyz \
        if block ~ ~-1 ~ crafting_table \
        if entity @n[dx=1,type=item,tag=hu.item.unboundBountyCompass] \
        run function hunters:item/bounty_compass/craft_clone