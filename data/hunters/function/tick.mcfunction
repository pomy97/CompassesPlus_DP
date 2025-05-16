#function hunters:craft/tick
function hunters:entity/other/tick
function hunters:entity/main
execute as 26dd0066-6501-49e8-91b5-febedde19041 if entity @s[tag=!joined] run tag @s add ec.quackity
tag @a[tag=!ec.player] add ec.player
tag @a[tag=!ec.joined] add ec.joined
execute as @a run function hunters:player/main
scoreboard players set @a[scores={ec.jump=1..}] ec.jump 0

schedule function hunters:tick 1t