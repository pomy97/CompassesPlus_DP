# separating line
item modify entity @s contents {\
  "function": "set_lore",\
  "mode": "insert",\
  "lore": [""]\
}
# "and #count more"
$execute unless data storage hunters:temp data.reward{excess_slots:-1} run item modify entity @s contents {\
  "function": "set_lore",\
  "mode": "insert",\
  "lore": [\
    {\
      "text": " ",\
      "color": "white",\
      "extra": [\
        {\
          "type": "translatable",\
          "translate": "item.container.more_items",\
          "fallback": "and %s more",\
          "with": [\
            "$(excess_slots)"\
          ]\
        }\
      ]\
    }\
  ]\
}
#add identifier
tag @s add hu.apply_lore

#item names
execute if data storage hunters:temp data.reward.container[{slot:4}] summon item run function hunters:item/bounty_compass/craft_bounty/get_item_name {slot:4}
execute if data storage hunters:temp data.reward.container[{slot:3}] summon item run function hunters:item/bounty_compass/craft_bounty/get_item_name {slot:3}
execute if data storage hunters:temp data.reward.container[{slot:2}] summon item run function hunters:item/bounty_compass/craft_bounty/get_item_name {slot:2}
execute if data storage hunters:temp data.reward.container[{slot:1}] summon item run function hunters:item/bounty_compass/craft_bounty/get_item_name {slot:1}
execute summon item run function hunters:item/bounty_compass/craft_bounty/get_item_name {slot:0}

item modify entity @s contents {\
  "function": "set_lore",\
  "mode": "insert",\
  "lore": [\
    {\
      "type": "translatable",\
      "translate": "item.hunters.bounty_compass.reward",\
      "fallback": "Reward:",\
      "italic": false,\
      "color": white\
    }\
  ]\
}
tag @s remove hu.apply_lore
