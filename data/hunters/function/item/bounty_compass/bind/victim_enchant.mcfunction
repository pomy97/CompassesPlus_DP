# from enchantment:bounty_compass
#
# @s = mob hit by compass

# # bounty info
data merge storage hunters:temp {new_bounty:{player:false}}
execute if entity @s[type=player] run data merge storage hunters:temp {new_bounty:{player:true}}
execute store success storage hunters:temp values.death byte 1 run scoreboard players get @s hu.deaths

#set deathcount if unset
execute unless data storage hunters:temp values{death:true} run scoreboard players set @s hu.deaths 0
# store deathcount
execute store result storage hunters:temp new_bounty.deaths int 1 run scoreboard players get @s hu.deaths

#tag bountied mob
tag @s add hu.bountied

#get bounty ID
data modify storage hunters:temp new_bounty.id set from storage hunters:bounty_storage bounties

#increase bounty count
execute store result score #bounties hu.temp run data get storage hunters:bounty_storage bounties
scoreboard players add #bounties hu.temp 1
execute store result storage hunters:bounty_storage bounties int 1 run scoreboard players get #bounties hu.temp

#get my UUID using this fancy converter from github: https://github.com/Skubiak0903/Simple-UUID
function su:convert with entity @s
data modify storage hunters:temp new_bounty.target_UUID set from storage su:main out

# DON'T DESPAWN PLS I BEG
data merge entity @s {PersistenceRequired:true}

#data merge entity @s {DeathLootTable:"hunters:tech/bountied_loot_table"}
#say LOOT
#data modify storage test:temp data.killed.UUID set from entity @s UUID