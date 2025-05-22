$data modify storage hunters:temp data.debug_arm set from storage hunters:bounty_storage bounty_storage.$(id)
$data merge storage hunters:temp {data:{debug_arm:{id:$(id)}}}
function hunters:debug/zzz/arm_bounty_compass with storage hunters:temp data.debug_arm