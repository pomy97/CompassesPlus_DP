# @s = mob hit by compass

#bounty info
data merge storage hunters:temp {new_bounty:{player:false}}
execute if entity @s[type=player] run data merge storage hunters:temp {new_bounty:{player:true}}
execute store result storage hunters:temp new_bounty.deaths int 1 run scoreboard players get @s hu.deaths

#tag bountied mob
tag @s add hu.bountied

#get bounty ID
data modify storage hunters:temp new_bounty.id set from storage hunters:bounty_storage bounties

#increase bounty count
execute store result score #bounties hu.numbers run data get storage hunters:bounty_storage bounties
scoreboard players add #bounties hu.numbers 1
execute store result storage hunters:bounty_storage bounties int 1 run scoreboard players get #bounties hu.numbers

#get UUID using this fancy converter from github: https://github.com/Skubiak0903/Simple-UUID
function su:convert with entity @s
data modify storage hunters:temp new_bounty.target_UUID set from storage su:main out

#store data from target
function hunters:item/compass/store_target_data with storage hunters:temp new_bounty
# STORAGE: {new_bounty:{player:false/true, deaths:#, id:#, target_UUID:"uuid-mess-in-hyphened-hexidecimal"}}

#uuid of mob
data modify storage hunters:temp bounty_compass.UUID set from entity @s UUID
# DON'T DESPAWN PLS I BEG
data merge entity @s {PersistenceRequired:true}

#Tie a marker to the bountied mob
execute unless entity @s[type=player] run summon marker ~ ~ ~ {Tags:["ec.this","ec.bountyMarker"],data:{"name":"Bounty Marker (keep your hands off axiom nerds)","bounty_UUID":[I;0,0,0,0]}}
execute unless entity @s[type=player] run data modify entity @n[tag=ec.this] data.bounty_UUID set from entity @s UUID
data modify storage hunters:temp bounty_compass.marker_UUID set from entity @n[tag=ec.this] UUID
execute unless entity @s[type=player] run ride @n[tag=ec.this] mount @s
execute unless entity @s[type=player] run tag @n[tag=ec.this] remove ec.this