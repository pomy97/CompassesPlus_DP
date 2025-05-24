$data modify storage hunters:bounty_storage bounties append value {$(id):"$(uuid)"}

$data modify storage hunters:bounty_storage target_data[{uuid:"$(uuid)"}].bounties[{id:$(id)}].active \
      set from storage hunters:bounty_storage target_data[{uuid:"$(uuid)"}].bounties[{id:$(old_id)}].active

$data modify storage hunters:bounty_storage target_data[{uuid:"$(uuid)"}].bounties[{id:$(id)}].deaths \
      set from storage hunters:bounty_storage target_data[{uuid:"$(uuid)"}].bounties[{id:$(old_id)}].deaths

$data modify storage hunters:bounty_storage target_data[{uuid:"$(uuid)"}].bounties[{id:$(id)}].rewarder_uuid \
      set from storage hunters:bounty_storage target_data[{uuid:"$(uuid)"}].bounties[{id:$(old_id)}].rewarder_uuid


$data modify entity @s Item.components.minecraft:custom_data.hunters.bounty_compass_data.id set value $(id)
