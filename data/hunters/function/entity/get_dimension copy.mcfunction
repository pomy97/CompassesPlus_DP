# from func:entity/location
#
# @s = piglin_brute

# STORAGE
# {
#   UUID: "uuid-mess-in-hyphened-hexidecimal"
# }

#get dimension as string
$data modify storage hunters:bounty_storage target_pos.$(UUID).location.dimension set from entity @s Brain.memories."minecraft:home".value.dimension

#uthi was paranoid and tried to make the piglin as inable to impact gameplay as humanly possible even though he's being sent into the void like wth are you doing
team join uthi.no_collision
effect give @s invisibility infinite 0 true
attribute @s scale base set 0.01
data merge entity @s[type=piglin_brute] {DeathLootTable:"uthi:empty",Health:0,NoAI:true,ArmorDropChances:[0,0,0,0],HandDropChances:[0,0],body_armor_drop_chance:0,HandItems:[{},{}]}

#delete self
tp @s ~ -1000 ~
