# set %tmp to int and multiply by power 
$scoreboard players set %tmp su.main $(int)
$scoreboard players operation %tmp su.main *= $(power) su.num

#add %tmp to %int
scoreboard players operation %int su.main += %tmp su.main

#debug
#$say char: $(char), power: $(power), +int: $(int)