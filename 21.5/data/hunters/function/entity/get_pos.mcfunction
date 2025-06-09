# from func:entity/1s
#
# @s = bountied mob

# STORAGE
# {
#   UUID: "uuid-mess-in-hyphened-hexidecimal"
# }

#get pos
$data modify storage hunters:bounty_storage target_data[{uuid:"$(uuid)"}].location.pos set value [I;0,0,0]

$execute store result storage hunters:bounty_storage target_data[{uuid:"$(uuid)"}].location.pos[0] int 1 run data get entity @s Pos[0]
$execute store result storage hunters:bounty_storage target_data[{uuid:"$(uuid)"}].location.pos[1] int 1 run data get entity @s Pos[1]
$execute store result storage hunters:bounty_storage target_data[{uuid:"$(uuid)"}].location.pos[2] int 1 run data get entity @s Pos[2]