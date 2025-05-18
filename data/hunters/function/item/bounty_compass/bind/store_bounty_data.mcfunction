# from func:item/bounty_compass/bind/attacker_enchant

#store data relating to the bounty
$data merge storage hunters:bounty_storage {bounty_storage:{$(id):{active: true, bounty_UUID: "$(bounty_UUID)", deaths: $(deaths), player: $(player)b, target_UUID: "$(target_UUID)"}}}
$scoreboard players operation %$(target_UUID) hu.deaths = $(target_UUID) hu.deaths

# id: {
#   active: true,
#   bounty_UUID: "example-UUID-in-hyphened-hexidecimal"
#   deaths: #int,
#   player: #boolean
#   target_UUID: "example-UUID-in-hyphened-hexidecimal"
# }
