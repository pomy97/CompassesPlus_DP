# from func:item/bounty_compass/update/trackable

# STORAGE (tracking_data):
# {
#   active:false/true,
#   bounty_UUID:"uuid-mess-in-hyphened-hexidecimal",
#   deaths:#,
#   hunter_UUID:"uuid-mess-in-hyphened-hexidecimal",
#   id:#,
#   location: {
#     dimension: "string",
#     pos: [x, y, z]
#   },
#   player:false,
#   target_UUID:"uuid-mess-in-hyphened-hexidecimal",
#   track_type: #
# }

$item modify entity @s weapon.mainhand {\
    "function":"set_components",\
    "components":{\
      "lodestone_tracker": {\
      target: $(location) \
    }\
  }\
}