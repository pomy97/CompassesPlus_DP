# from enchantment:bounty_compass
#
# @s = mob hit by compass


#give bountied mob needed data
tag @s add hu.bountied
#data merge entity @s {DeathLootTable:"hunters:tech/bountied_loot_table"}
data merge entity @s {PersistenceRequired:true}

# # bounty info
data merge storage hunters:temp {data:{new_bounty:{player:false}}}
execute if entity @s[type=player] run data merge storage hunters:temp {data:{new_bounty:{player:true}}}
execute store success storage hunters:temp data.values.death byte 1 run scoreboard players get @s hu.deaths

#set deathcount if unset
execute unless data storage hunters:temp data.values{death:true} run scoreboard players set @s hu.deaths 0
# store deathcount
execute store result storage hunters:temp data.new_bounty.deaths int 1 run scoreboard players get @s hu.deaths

#get bounty ID
execute store result storage hunters:temp data.new_bounty.id int 1 run data get storage hunters:bounty_storage bounties

#get my UUID using this fancy converter from github: https://github.com/Skubiak0903/Simple-UUID
function su:convert with entity @s
data modify storage hunters:temp data.new_bounty.target_uuid set from storage su:main out