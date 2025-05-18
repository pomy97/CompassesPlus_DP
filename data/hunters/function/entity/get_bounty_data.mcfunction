# from func:entity/1s
#
# @s = bountied mob

#> Get my UUID
#get my UUID using this fancy converter from github: https://github.com/Skubiak0903/Simple-UUID
function su:convert with entity @s
data modify storage hunters:temp bounty_pos.UUID set from storage su:main out

#> Dimension Check
execute unless entity @s[type=player] at @s summon piglin_brute run function hunters:entity/get_dimension with storage hunters:temp bounty_pos
execute if entity @s[type=player] run function hunters:entity/player/get_dimension with storage hunters:temp bounty_pos

#> Position Check
function hunters:entity/get_pos with storage hunters:temp bounty_pos

#> Update player's Death Count
execute if entity @s[type=player] run function hunters:entity/player/update_deaths with storage hunters:temp bounty_pos
