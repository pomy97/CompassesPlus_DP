# from func:item/bounty_compass/bind/attacker_enchant
#
# @s = person who hit mob (the bountier)

# STORAGE: 
# {
#   player:false/true, #
#   rewarder_uuid:"uuid-mess-in-hyphened-hexidecimal", 
#   deaths:#, 
#   id:#, 
#   target_uuid:"uuid-mess-in-hyphened-hexidecimal"
# }

#give the dude an advancement
advancement grant @s only hunters:bind_bounty_compass

#sounds
playsound minecraft:entity.warden.sonic_charge master @s ~ ~ ~ 1 2
playsound block.respawn_anchor.set_spawn master @s ~ ~ ~ 1 1

#bind compass to ID
item modify entity @s weapon hunters:bounty_compass/arm
##Because I need to use a macro, here's an entire item modifier so I don't have to use some nonsense with item displays and external slots.
$item modify entity @s weapon.mainhand [\
  {\
    function:"set_custom_data",\
    tag:{\
      hunters: {\
        "bounty_compass_data": {\
          "id": $(id), \
          "uuid": $(target_uuid) \
        }\
      }\
    }\
  },\
  {\
    "function": "set_lore",\
    "mode": "replace_all",\
    "lore": [\
      {\
        "type":"translatable",\
        translate: "item.hunters.bounty_compass.target",\
        "fallback": "Target: [%s]",\
        "with":[\
          {\
            "selector": "$(target_uuid)",\
            "color": "red",\
            "italic":false,\
          }\
        ],\
        "color": "gray",\
        "italic": false\
      },\
      {\
        "type":"translatable",\
        translate: "item.hunters.bounty_compass.bound_by",\
        "fallback": "Bountied by: [%s]",\
        "with":[\
          {\
            "selector": "$(rewarder_uuid)",\
            "color": "green",\
            "italic":false,\
          }\
        ],\
        "color": "gray",\
        "italic": false\
      }\
    ],\
    "entity": "this"\
  }\
]

#remove storage data
data remove storage hunters:temp data.new_bounty