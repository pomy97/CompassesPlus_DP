$data modify storage hunters:temp debug_arm set from storage hunters:bounty_storage bounty_storage.$(id)
$data merge storage hunters:temp {debug_arm:{id:$(id)}}
function hunters:debug/zzz/arm_bounty_compass with storage hunters:temp debug_arm