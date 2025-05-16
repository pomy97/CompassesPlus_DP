#from ../cast
scoreboard players set @s uthi.raycastSteps 0

tellraw @a[tag=uthi.dev] "Ray: Cast"

#starts recusrive step func
execute at @s run function uthi:utils/raycast_block/step with storage uthi:temp raycast_data

#kills the ray after all is said and done
kill @s