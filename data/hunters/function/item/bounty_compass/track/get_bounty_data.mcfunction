# from func:item/bounty_compass/track/tick
#
# @s = person holding compass

# STORAGE (tracking_data):
# {
#   id:#
# }

#get my UUID using this fancy converter from github: https://github.com/Skubiak0903/Simple-UUID
function su:convert with entity @s
data modify storage hunters:temp tracking_data.hunter_UUID set from storage su:main out

#grab bounty data
$data modify storage hunters:temp tracking_data.active set from storage hunters:bounty_storage bounty_storage.$(id).active
$data modify storage hunters:temp tracking_data.player set from storage hunters:bounty_storage bounty_storage.$(id).player
$data modify storage hunters:temp tracking_data.bounty_UUID set from storage hunters:bounty_storage bounty_storage.$(id).bounty_UUID
$data modify storage hunters:temp tracking_data.deaths set from storage hunters:bounty_storage bounty_storage.$(id).deaths
$data modify storage hunters:temp tracking_data.target_UUID set from storage hunters:bounty_storage bounty_storage.$(id).target_UUID

# If bounty inactive, deactivate the compass
#$execute if data storage hunters:bounty_storage bounty_storage.$(id){active:false} \
        run return run function hunters:item/bounty_compass/update/deactivate with storage hunters:temp tracking_data
$execute if data storage hunters:bounty_storage bounty_storage.$(id){active:false} \
        run return run function hunters:item/bounty_compass/update/deactivate

# check if the mob is ALIVE/trackable
$execute store result storage hunters:bounty_storage bounty_storage.$(id).active byte 1 \
        run function hunters:item/bounty_compass/track/track_checks with storage hunters:temp tracking_data

#if not player & track_type = 0 OR 1, track
$execute if data storage hunters:bounty_storage bounty_storage.$(id){player:false} \
        if data storage hunters:temp tracking_data.track_type \
        run function hunters:item/bounty_compass/update/trackable with storage hunters:temp tracking_data

#if player & track_type = 1, track
$execute if data storage hunters:bounty_storage bounty_storage.$(id){player:true} \
        if data storage hunters:temp tracking_data{track_type:1} \
        run function hunters:item/bounty_compass/update/trackable with storage hunters:temp tracking_data

#if player & track_type = 0, say "untrackable because offline lol"
#$execute if data storage hunters:bounty_storage bounty_storage.$(id){player:true} \
        if data storage hunters:temp tracking_data{track_type:0} \
        run function hunters:item/bounty_compass/update/untrackable with storage hunters:temp tracking_data
$execute if data storage hunters:bounty_storage bounty_storage.$(id){player:true} \
        if data storage hunters:temp tracking_data{track_type:0} \
        run function hunters:item/bounty_compass/update/untrackable
