# from func:item/bounty_compass/bind/attacker_enchant
#
# @s = person who hit mob (the bountier)

#debug
$tellraw @a[tag=uthi.dev] [{"selector": "@s"},{"text":" - BC:Locked Target "},{"selector": "$(target_UUID)"}]

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
          "id": $(id) \
        }\
      }\
    }\
  },\
  {\
    "function": "set_lore",\
    "mode": "replace_all",\
    "lore": [\
      {\
        "text": "Bound by: [",\
        "color": "white",\
        "italic":false,\
        "extra":[\
          {\
            selector: "@s",\
            "color": "red",\
            "italic":false,\
          },\
          {\
            "text":"]"\
          }\
        ]\
      },\
      {\
        "text": "Tracks a target when held",\
        "color": "gray",\
        "italic": false\
      },\
      {\
        "text": "Punch a target with the compass to track",\
        "color": "gray",\
        "italic": false\
      },\
      {\
        "text": "One-time use",\
        "color": "gray",\
        "italic": false\
      }\
    ],\
    entity:"this"\
  }\
]

#remove storage data
data remove storage hunters:temp new_bounty