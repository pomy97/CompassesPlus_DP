#from ../ray

#check for blocks
$execute if score #ray uthi.raycastSteps matches 0.. unless block ~ ~ ~ $(skipped_blocks) unless block ~ ~ ~ $(action_blocks) run tellraw @a[tag=uthi.dev] "Ray: Found unskipped Block"
$execute if score #ray uthi.raycastSteps matches 0.. unless block ~ ~ ~ $(skipped_blocks) unless block ~ ~ ~ $(action_blocks) run function uthi:utils/raycast_block/pre_end with storage uthi:temp raycast_data

$execute if score #ray uthi.raycastSteps matches 0.. if block ~ ~ ~ $(action_blocks) run tellraw @a[tag=uthi.dev] "Ray: Found Action Block"
$execute if score #ray uthi.raycastSteps matches 0.. if block ~ ~ ~ $(action_blocks) run function $(action_function)

#Step function
$function $(step_function)

#Dev
particle dust{color:[1,0,1],scale:2} ~ ~ ~ 0.0 0.0 0.0 0 1 force @a[tag=uthi.dev]

#actually moves the ray
$execute unless score #ray uthi.raycastSteps matches $(ray_steps).. at @s run tp ^ ^ ^$(step_size)
scoreboard players add #ray uthi.raycastSteps 1

#if score0, end
$execute if score #ray uthi.raycastSteps matches $(ray_steps).. at @s run tellraw @a[tag=uthi.dev] "Ray: Reached end of path"
$execute if score #ray uthi.raycastSteps matches $(ray_steps).. at @s run function $(end_function)

#call func again, if steps remaining
$execute unless score #ray uthi.raycastSteps matches $(ray_steps).. at @s run function uthi:utils/raycast_block/step with storage uthi:temp raycast_data