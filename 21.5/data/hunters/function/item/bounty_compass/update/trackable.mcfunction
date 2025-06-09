# from func:item/bounty_compass/track/get_bounty_data

# STORAGE (tracking_data):
# {
#   active:false/true,
#   rewarder_uuid:"uuid-mess-in-hyphened-hexidecimal",
#   deaths:#,
#   id:#,
#   player:false,
#   target_uuid:"uuid-mess-in-hyphened-hexidecimal",
#   track_type: #
# }

#Get location data
$data modify storage hunters:temp data.tracking_data.location set from storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].location

# update the compass
function hunters:item/bounty_compass/update/track with storage hunters:temp data.tracking_data

title @s actionbar {\
    "translate": "item.hunters.bounty_compass.tracking_target",\
    "fallback": "Tracking Target",\
    "color": "gray"\
}

$execute unless data storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].location{dimension:"$(dimension)"} run title @s actionbar {\
    "translate": "item.hunters.bounty_compass.wrong_dimension",\
    "fallback": "Target is not in your dimension",\
    "color": "gray"\
}

# Range things
tag @s add hu.this
#if target within 100 blocks, send actionbar msg
$execute as $(target_uuid) if entity @s[distance=..100] \
    run title @p[tag=hu.this] actionbar {\
      "translate": "item.hunters.bounty_compass.target_nearby",\
      "fallback": "Target [%s] is within 100 blocks",\
      "color": "gray",\
      "with": [\
        {\
          "selector": "$(target_uuid)",\
          "color": "red"\
        }\
      ]\
    }
#if target within 50 blocks, p a r t i c l e s
$execute as $(target_uuid) if entity @s[distance=..50] at @s run particle minecraft:dust{color:[1,0,0],scale:0.5} ~ ~3 ~ 0 .25 0 0 10 force @p[tag=hu.this]
tag @s remove hu.this