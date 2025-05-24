$data modify storage hunters:temp data.tracking_data.bundle_contents \
      set from storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].reward
#mark bounty as paid
$data modify storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].paid set value true

function hunters:item/bounty_compass/update/deactivate/grant_reward with storage hunters:temp data.tracking_data

#grant advancement
advancement grant @s only hunters:charietto