item modify entity @s weapon hunters:bounty_compass/arm
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
            text: "pomy97",\
            "color": "red",\
            "italic":false,\
            "obfuscated": true\
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