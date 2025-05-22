# from func:item/bounty_compass/bind/attacker_enchant
#
# @s = item

data merge entity @s {Item:{id:"stick",count:1}}
#get LOOOOOOORE!
$item modify entity @s contents {\
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
      "color": "white",\
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
      "color": "white",\
      "italic": false\
    }\
  ],\
  "entity": "this"\
}

#store data relating to the bounty
$data modify storage hunters:bounty_storage bounties append value {$(id):"$(target_uuid)"}
$data modify storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].player set value $(player)b
$data modify storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].active set value true
$data modify storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].rewarder_uuid set value "$(rewarder_uuid)"
$data modify storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].deaths set value $(deaths)
$data modify storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].compass_data.lore set from entity @s Item.components.minecraft:lore

$scoreboard players operation %$(target_uuid) hu.deaths = $(target_uuid) hu.deaths

# target_data: [
#   {
#     "uuid"
#     "player"
#     "bounties": [
#       {
#         "id"
#         "bounty_uuid"
#         "compass_data"
#         "active"
#         "deaths"
#       }
#     ]
#   }
# ]
kill @s