# from func:item/bounty_compass/update/trackable

# STORAGE (tracking_data):
# {
#   active:false/true,
#   rewarder_uuid:"uuid-mess-in-hyphened-hexidecimal",
#   deaths:#,
#   id:#,
#   location: {
#     dimension: "string",
#     pos: [x, y, z]
#   },
#   player:false,
#   target_uuid:"uuid-mess-in-hyphened-hexidecimal",
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