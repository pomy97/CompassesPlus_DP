# check if this ID was already resolved
$execute unless data storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].claimant_uuid \
        run data modify storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].claimant_uuid \
                 set from storage hunters:temp data.bounty_death.claimant_uuid

#remove ID storage for subsequent checks
data remove storage hunters:temp data.bounty_death.id
