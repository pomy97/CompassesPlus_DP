#get Array
$data modify storage hunters:temp bounty_reward.container append value {slot:$(slot)}
$data modify storage hunters:temp bounty_reward.container[{slot:$(slot)}].item set from storage hunters:temp bounty_reward.bundle[$(slot)]

#increase slot
scoreboard players add #slot hu.temp 1

#> The recursive bit
#check if we hit our size limit. If yes, kill the loop.
execute unless score #bundleSize hu.temp = #slot hu.temp \
        store result storage hunters:temp bounty_reward.slot int 1 \
        run scoreboard players get #slot hu.temp
execute unless score #bundleSize hu.temp = #slot hu.temp \
        run return run function hunters:item/bounty_compass/bounty/store_container_data with storage hunters:temp bounty_reward