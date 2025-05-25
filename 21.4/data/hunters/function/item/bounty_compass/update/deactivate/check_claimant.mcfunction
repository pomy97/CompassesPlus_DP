#check if yes
$execute if data storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id), claimant_uuid:"$(hunter_uuid)"}] \
         unless data storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id), claimant_uuid:"$(hunter_uuid)", paid: true}] \
        run return run function hunters:item/bounty_compass/update/deactivate/get_reward with storage hunters:temp data.tracking_data

#check if no
item modify entity @s weapon.mainhand hunters:bounty_compass/deactivate
