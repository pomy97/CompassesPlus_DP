# from func:item/bounty_compass/track/tick
#
# @s = person holding compass

# STORAGE (tracking_data):
# {
#   id:#,
#   uuid: "foobar-piyo-hoge-quxx-xyzzygarply"
# }

#grab bounty data
$data modify storage hunters:temp data.tracking_data.player set from storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].player
$data modify storage hunters:temp data.tracking_data.active set from storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].active
$data modify storage hunters:temp data.tracking_data.rewarder_uuid set from storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].rewarder_uuid
$data modify storage hunters:temp data.tracking_data.deaths set from storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].deaths

# If bounty inactive, deactivate the compass
execute if data storage hunters:temp data.tracking_data{active:false} \
        run return run function hunters:item/bounty_compass/update/deactivate

# check if the mob is ALIVE/trackable
$execute store result storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].active byte 1 \
        run function hunters:item/bounty_compass/track/track_checks with storage hunters:temp data.tracking_data

#if not player & track_type = 0 OR 1, track
execute if data storage hunters:temp data.tracking_data{player:false} \
        if data storage hunters:temp data.tracking_data.track_type \
        run function hunters:item/bounty_compass/update/trackable with storage hunters:temp data.tracking_data

#if player & track_type = 1, track
execute if data storage hunters:temp data.tracking_data{player:true} \
        if data storage hunters:temp data.tracking_data{track_type:1} \
        run function hunters:item/bounty_compass/update/trackable with storage hunters:temp data.tracking_data

#if player & track_type = 0, say "untrackable because offline lol"
execute if data storage hunters:temp data.tracking_data{player:true} \
        if data storage hunters:temp data.tracking_data{track_type:0} \
        run function hunters:item/bounty_compass/update/untrackable
