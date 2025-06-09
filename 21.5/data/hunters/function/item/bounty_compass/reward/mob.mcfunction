#get UUIDs in hex
$function su:convert {UUID: $(target)}
data modify storage hunters:temp data.bounty_death.target_uuid set from storage su:main out

$function su:convert {UUID: $(claimant)}
data modify storage hunters:temp data.bounty_death.claimant_uuid set from storage su:main out

# check claimant's inventory
$execute as @a[nbt={UUID:$(claimant)}] run function hunters:item/bounty_compass/reward/check_inventory with storage hunters:temp data.bounty_death
#remove the item
kill @s