#data remove storage hunters:temp data.reward
#data modify storage hunters:temp data.reward.bundle set from entity @n[predicate=hunters:item/filled_bundle] Item.components.minecraft:bundle_contents
#execute unless data storage hunters:temp data.reward.bundle run return fail
#function hunters:item/bounty_compass/bounty/get_bundle_data with storage hunters:temp data.reward
#function hunters:item/bounty_compass/bounty/store_container_slot with storage hunters:temp data.reward

item modify entity @s weapon {\
  "function": "set_lore",\
  "mode": "replace_all",\
  "lore": [\
    {\
      "type":"translatable",\
      translate: "item.hunters.bounty_compass.bound",\
      "fallback": "Bounty by: [%s]",\
      "with":[\
        {\
          "selector": "@s",\
          "color": "red",\
          "italic":false,\
        }\
      ],\
      "color": "white",\
      "italic":false\
    }\
  ],\
  "entity": "this"\
}