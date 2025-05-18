# from func:item/bounty_compass/track/get_bounty_data

# STORAGE (tracking_data):
# {
#   active:false/true,
#   bounty_UUID:"uuid-mess-in-hyphened-hexidecimal",
#   deaths:#,
#   hunter_UUID:"uuid-mess-in-hyphened-hexidecimal",
#   id:#,
#   player:false,
#   target_UUID:"uuid-mess-in-hyphened-hexidecimal"
# }

data remove storage hunters:temp tracking_data.track_type

#check if deceased
$execute if data storage hunters:temp tracking_data{player:true} unless score %$(target_UUID) hu.deaths matches $(deaths) run return fail
$execute if data storage hunters:temp tracking_data{player:false} unless score $(target_UUID) hu.deaths matches $(deaths) run return fail

#check if unloaded
$execute unless entity $(target_UUID) if score %$(target_UUID) hu.deaths matches $(deaths) run return run data merge storage hunters:temp {tracking_data:{track_type:0}}

#check if entity loaded
$execute if entity $(target_UUID) run return run data merge storage hunters:temp {tracking_data:{track_type:1}}

# "track_type"
# 1 = in loaded chunks
# 0 = unloaded but alive
# undefined = deceased