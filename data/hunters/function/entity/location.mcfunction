#> Dimension Check (For Compass)
#if in untracked dimension
execute unless predicate hunters:location/in_overworld unless predicate hunters:location/in_the_nether unless predicate hunters:location/in_the_end run scoreboard players set @s ec.dimension 0

execute if predicate hunters:location/in_overworld run scoreboard players set @s ec.dimension 1
execute if predicate hunters:location/in_the_nether run scoreboard players set @s ec.dimension 2
execute if predicate hunters:location/in_the_end run scoreboard players set @s ec.dimension 3

#> Position Check (For Compass)
execute store result score @s ec.posX run data get entity @s Pos[0] 1
execute store result score @s ec.posY run data get entity @s Pos[1] 1
execute store result score @s ec.posZ run data get entity @s Pos[2] 1