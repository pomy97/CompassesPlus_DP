# from func:item/bounty_compass/bind/attacker_enchant
#
# @s = attacker

#store data relating to the bounty
$data modify storage hunters:bounty_storage bounties append value {$(id):"$(target_uuid)"}
$data modify storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].player set value $(player)b
$data modify storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].active set value true
$data modify storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].rewarder_uuid set value "$(rewarder_uuid)"
$data modify storage hunters:bounty_storage target_data[{uuid:"$(target_uuid)"}].bounties[{id:$(id)}].deaths set value $(deaths)

$scoreboard players operation %$(target_uuid) hu.deaths = $(target_uuid) hu.deaths

# target_data: [
#   {
#     "uuid"
#     "player"
#     "bounties": [
#       {
#         "id"
#         "bounty_uuid"
#         "active"
#         "deaths"
#       }
#     ]
#   }
# ]