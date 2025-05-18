# from func:item/bounty_compass/track/get_bounty_data

# STORAGE (tracking_data):
# {
#   active:false/true,
#   bounty_UUID:"uuid-mess-in-hyphened-hexidecimal",
#   deaths:#,
#   hunter_UUID:"uuid-mess-in-hyphened-hexidecimal",
#   id:#,
#   player:false,
#   target_UUID:"uuid-mess-in-hyphened-hexidecimal",
#   track_type: #
# }

#Get location data
$data modify storage hunters:temp tracking_data.location set from storage hunters:bounty_storage target_pos.$(target_UUID).location

# update the compass
function hunters:item/bounty_compass/update/track with storage hunters:temp tracking_data

title @s actionbar {"text": "Tracking Target","color": "gray"}

# Range things
tag @s add hu.this
#if target within 100 blocks, send actionbar msg
$execute as $(target_UUID) if entity @s[distance=..100] \
    run title @p[tag=hu.this] actionbar [{"text": "Target [","color": "gray"},{"selector": "@s","color": "red"},{"text": "] is within 100 blocks","color": "gray"}]
#if target within 50 blocks, p a r t i c l e s
$execute as $(target_UUID) if entity @s[distance=..50] at @s run particle minecraft:dust{color:[1,0,0],scale:0.5} ~ ~3 ~ 0 .25 0 0 10 force @p[tag=hu.this]
tag @s remove hu.this