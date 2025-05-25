# from
#   func:item/bounty_compass/track/check_bounty_data
# @s = player holding compass

#deactivate if no reward
$execute unless data storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].reward \
        run item modify entity @s weapon.mainhand hunters:bounty_compass/deactivate
#get my UUID
function su:convert with entity @s
data modify storage hunters:temp data.tracking_data.hunter_uuid set from storage su:main out

#if reward, check if @s is claimant
$execute if data storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].reward \
        run function hunters:item/bounty_compass/update/deactivate/check_claimant with storage hunters:temp data.tracking_data