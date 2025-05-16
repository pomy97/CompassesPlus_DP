data modify storage uthi:temp arrow_data set from entity @s item.components."minecraft:custom_data".uthi.arrow_data
function uthi:entity/arrow/merge_data with storage uthi:temp
data remove storage uthi:temp arrow_data
tag @s add uthi.tagged