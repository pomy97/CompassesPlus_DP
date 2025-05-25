
advancement revoke @s only hunters:tech/killed_by_player
#get UUIDs in hex
function su:convert with entity @s
data modify storage hunters:temp data.bounty_death.target_uuid set from storage su:main out

execute on attacker run function su:convert with entity @s
data modify storage hunters:temp data.bounty_death.claimant_uuid set from storage su:main out

# check claimant's inventory
execute on attacker run function hunters:item/bounty_compass/reward/check_inventory with storage hunters:temp data.bounty_death