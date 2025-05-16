# @s = mob

#> Compass Tracking
execute as @e[tag=ec.bountyMarker,type=marker] at @s run function hunters:entity/location
execute as @e[tag=ec.bountyMarker,type=marker] run function hunters:entity/death_check with entity @s data
