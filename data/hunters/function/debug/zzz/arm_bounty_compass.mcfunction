# STORAGE: 
# {
#   active: true,
#   rewarder_uuid: "example-UUID-in-hyphened-hexidecimal"
#   deaths: #int,
#   id: #int,
#   player: #boolean
#   target_uuid: "example-UUID-in-hyphened-hexidecimal"
# }


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
            "selector": "$(rewarder_uuid)",\
            "color": "red",\
            "italic":false,\
          },\
          {\
            "text":"]"\
          }\
        ]\
      }\
    ],\
  "entity": "this"\
  }\
]