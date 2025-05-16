#vex charm
execute as @e[type=item,tag=!ec.vex_charm] if data entity @s Item.components."minecraft:custom_data"{hunters:{item:'vex_charm'}} if data entity @s Item{count:1} run function hunters:item/vex_charm/init
execute as @e[type=item,tag=ec.vex_charm,nbt={OnGround:1b}] at @s rotated 0 0 run function hunters:item/vex_charm/rest

#sight helm for normie mobs
effect give @e[predicate=hunters:wearing/sight_helmet,type=!player] glowing 1

#blasting arrow
execute as @e[type=minecraft:spectral_arrow,tag=!ec.noised] if data entity @s item.components."minecraft:custom_data"{hunters:{item:'blasting_arrow'}} at @s run function hunters:item/blasting_arrow/noise
execute as @e[type=minecraft:spectral_arrow,nbt={inGround:true},tag=!ec.blasting_power] if data entity @s item.components."minecraft:custom_data"{hunters:{item:'blasting_arrow'}} at @s run function hunters:item/blasting_arrow/hit
execute as @e[type=minecraft:spectral_arrow,nbt={inGround:true},tag=ec.blasting_power] if data entity @s item.components."minecraft:custom_data"{hunters:{item:'blasting_arrow'}} at @s run function hunters:item/blasting_arrow/hit_power
execute as @e[type=minecraft:spectral_arrow] if data entity @s item.components."minecraft:custom_data"{hunters:{item:'blasting_arrow'}} at @s run function hunters:item/blasting_arrow/trail

#empty light
execute as @e[type=spectral_arrow,tag=ec.dark_spectral] at @s run function hunters:item/empty_light/trail
execute as @e[type=spectral_arrow,tag=ec.dark_spectral] if score @s ec.dark_spectral_time matches ..0 at @s run function hunters:item/empty_light/pop with entity @s
execute as @e[type=spectral_arrow,tag=ec.dark_spectral] if score @s ec.dark_spectral_time matches 1.. run scoreboard players remove @s ec.dark_spectral_time 1

#> Tag invis people
tag @e[nbt={active_effects: [{id: "minecraft:invisibility"}]}] add ec.invis
tag @e[nbt=!{active_effects: [{id: "minecraft:invisibility"}]}] remove ec.invis

