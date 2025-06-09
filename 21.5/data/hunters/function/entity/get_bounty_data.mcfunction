# from func:entity/1s
#
# @s = bountied mob

#> Get my UUID
function su:convert with entity @s
data modify storage hunters:temp data.bounty_pos.uuid set from storage su:main out

#> Dimension Check
execute unless entity @s[type=player] at @s summon piglin_brute run function hunters:entity/get_dimension with storage hunters:temp data.bounty_pos
execute if entity @s[type=player] run function hunters:entity/player/get_dimension with storage hunters:temp data.bounty_pos

#> Position Check
function hunters:entity/get_pos with storage hunters:temp data.bounty_pos

#> Update player's Death Count
execute if entity @s[type=player] run function hunters:entity/player/update_deaths with storage hunters:temp data.bounty_pos
