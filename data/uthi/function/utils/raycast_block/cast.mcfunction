### FUNCTION CALL FORMAT (MUY IMPORTANTE!!!)
#  function uthi:utils/raycast_block/cast {skipped_blocks:"<block_tag>", action_blocks:"<block_tag>", ray_steps:<integer>, step_size:<number>, action_function: "<function_path>", step_function:"<function_path>", end_function:"<function_path>"}
#

## skipped_blocks: "<block_tag>"
#    What blocks the ray can pass through. Can be a single block type or a tag.
#    DO NOT SET THIS DO EMPTY! At least have #air in the tag, or else the ray will go absolutely nowhere.

## action_blocks: "<block_tag>"
#    What blocks the ray will run a function at when hit. Can be a single block type or a tag. 
#    If you want nothing to happen, set it to "uthi:empty".

## action_function: "<function_path>"
#    The function that will run when the ray hits an action block.
#    This will be run at the position of the ray AS the ray. If you want to target the person who shot the ray, search for entities with the tag "uthi.shotSource"
#    If you want nothing to happen, set it to "uthi:empty".

## step_size: <number>, 
#    How far the ray will move before it runs it's checks. Higher numbers mean higher precision, at a high preformance cost. Best to go for .5
#    Must be positive or the ray will go backwards

## ray_steps: <integer>, 
#    How many steps the ray will take. Take the number of blocks you want to travel, divide it by the step_size and you have your ray_steps.
#    Must be an integer.

## step_function: "<function_path>", 
#    The function that will run for at step the ray. I like to use this for particles.
#    This will be run at the position of the ray AS the ray. If you want to target the person who shot the ray, search for entities with the tag "uthi.shotSource"
#    If you want nothing to happen, set it to "uthi:empty".

## end_function: "<function_path>"
#    The function that will run when the ray reaches the end of it's path.
#    This will be run at the position of the ray AS the ray. If you want to target the person who shot the ray, search for entities with the tag "uthi.shotSource"
#    If you want nothing to happen, set it to "uthi:empty"

# Example Function
# function uthi:utils/raycast_block/cast {skipped_blocks:"#uthi:no_hard_collision", action_blocks:"#uthi:glass_panes", ray_steps:50, step_size:.5, action_function: "uthi:dummy/summon_boat", step_function:"uthi:empty", end_function:"uthi:dummy/summon_pig"}
# ######################### #

# Reset ray score
scoreboard players set #ray uthi.raycastSteps 0

# creating the ray
tellraw @a[tag=uthi.dev] "Ray: Created"
tag @s add uthi.shotSource
summon area_effect_cloud ~ ~ ~ {Duration:1, Tags:[uthi.raycast]}

# angling the ray to match player's eyes and orientation
execute anchored eyes as @s run tp @e[tag=uthi.raycast,limit=1,sort=nearest] ^ ^ ^ ~ ~

# store values
$data merge storage uthi:temp {raycast_data:{skipped_blocks:"$(skipped_blocks)", action_blocks:"$(action_blocks)", ray_steps:$(ray_steps), step_size:$(step_size), action_function:"$(action_function)", step_function:"$(step_function)", end_function:"$(end_function)"}}

#debug
tellraw @a[tag=uthi.dev] "\nRay: Casting with following data"
$tellraw @a[tag=uthi.dev] "  Skipped Blocks: $(skipped_blocks)"
$tellraw @a[tag=uthi.dev] "  Max Steps: $(ray_steps)"
$tellraw @a[tag=uthi.dev] "  Step size: $(step_size)"
$tellraw @a[tag=uthi.dev] "  Function to run each step: $(step_function)"
$tellraw @a[tag=uthi.dev] "  Function to run at end: $(end_function)"

tellraw @a[tag=uthi.dev] "\nRay: Initial Coordinates"
tellraw @a[tag=uthi.dev] ["  x: ",{"nbt": "Pos[0]","entity": "@e[tag=uthi.raycast,limit=1,sort=nearest]"}]
tellraw @a[tag=uthi.dev] ["  y: ",{"nbt": "Pos[1]","entity": "@e[tag=uthi.raycast,limit=1,sort=nearest]"}]
tellraw @a[tag=uthi.dev] ["  z: ",{"nbt": "Pos[2]","entity": "@e[tag=uthi.raycast,limit=1,sort=nearest]"}]
tellraw @a[tag=uthi.dev] ["  pit: ",{"nbt": "Rotation[0]","entity": "@e[tag=uthi.raycast,limit=1,sort=nearest]"}]
tellraw @a[tag=uthi.dev] ["  yaw: ",{"nbt": "Rotation[1]","entity": "@e[tag=uthi.raycast,limit=1,sort=nearest]"}]
tellraw @a[tag=uthi.dev] "\nRay: Player Coordinates (for reference)"
tellraw @a[tag=uthi.dev] ["  x: ",{"nbt": "Pos[0]","entity": "@s"}]
tellraw @a[tag=uthi.dev] ["  y: ",{"nbt": "Pos[1]","entity": "@s"}]
tellraw @a[tag=uthi.dev] ["  z: ",{"nbt": "Pos[2]","entity": "@s"}]
tellraw @a[tag=uthi.dev] ["  pit: ",{"nbt": "Rotation[0]","entity": "@s"}]
tellraw @a[tag=uthi.dev] ["  yaw: ",{"nbt": "Rotation[1]","entity": "@s"}]

#starting movement
execute as @e[tag=uthi.raycast,limit=1,sort=nearest] run function uthi:utils/raycast_block/ray

data remove storage uthi:temp raycast_data
tag @s remove uthi.shotSource