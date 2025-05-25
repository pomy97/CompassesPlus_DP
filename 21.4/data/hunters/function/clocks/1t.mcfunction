execute as @e[type=item] \
        if items entity @s contents *[custom_data~{hunters:{death_uuid_item: true}}] \
        run function hunters:item/bounty_compass/reward/mob with entity @s Item.components.minecraft:custom_data.hunters

schedule function hunters:clocks/1t 1t