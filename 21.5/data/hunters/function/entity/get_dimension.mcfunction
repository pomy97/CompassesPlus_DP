# from func:entity/1s
#
# @s = piglin_brute

# STORAGE
# {
#   UUID: "uuid-mess-in-hyphened-hexidecimal"
# }

#get dimension as string
$data modify storage hunters:bounty_storage target_data[{uuid:"$(uuid)"}].location.dimension set from entity @s Brain.memories."minecraft:home".value.dimension

#uthi was paranoid and tried to make the piglin as inable to impact gameplay as humanly possible even though he's being sent into the void like wth are you doing
team join uthi.no_collision
effect give @s invisibility infinite 0 true
attribute @s scale base set 0.01
#delete self
tp @s ~ -1000 ~
