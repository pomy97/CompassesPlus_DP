#get Array
$data modify storage hunters:temp data.reward.container[{slot:$(slot)}].item set from storage hunters:temp data.reward.bundle[$(slot)]

#increase slot
scoreboard players add #slot hu.temp 1

#> The recursive bit
#check if we hit our size limit. If yes, kill the loop.
execute unless score #bundleSize hu.temp = #slot hu.temp \
        store result storage hunters:temp data.reward.slot int 1 \
        run scoreboard players get #slot hu.temp
execute unless score #bundleSize hu.temp = #slot hu.temp \
        run return run function hunters:item/bounty_compass/bounty/store_container_data with storage hunters:temp data.reward