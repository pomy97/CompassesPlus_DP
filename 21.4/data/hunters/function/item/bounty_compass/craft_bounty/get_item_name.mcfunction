# @DorkOrc didn't see this yoink coming
$data modify entity @s Item set from storage hunters:temp data.reward.container[{slot:$(slot)}].item
# if there’s no custom_name but there is an item_name, set the custom_name to the item_name
execute if items entity @s contents *[!custom_name] if data entity @s Item.components.minecraft:item_name run item modify entity @s contents {function:"set_name",entity:"this",name:{nbt:"Item.components.minecraft:item_name",entity:"@s",interpret:true}}

# if there’s no custom_name yet, set the custom_name to this entity’s name (the item translation)
execute if items entity @s contents *[!custom_name] run item modify entity @s contents {function:"set_name",entity:"this",name:{selector:"@s"}}

# "#name x#count"
item modify entity @n[tag=hu.apply_lore] contents {\
  "function": "set_lore",\
  "mode": "insert",\
  "lore": [\
    {\
      "text": " ",\
      "color": "white",\
      "italic": false,\
      "extra": [\
        {\
          "type": "translatable",\
          "translate": "container.shulkerBox.itemCount",\
          "fallback": "%s x%s",\
          "with": [\
            {\
              "nbt": "Item.components.minecraft:custom_name",\
              "entity": "@s",\
              "interpret": true\
            },\
            {\
              "nbt": "Item.count",\
              "entity": "@s"\
            }\
          ]\
        }\
      ]\
    }\
  ],\
  "entity": "this"\
}

kill @s