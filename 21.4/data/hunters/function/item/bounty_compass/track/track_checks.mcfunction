# from func:item/bounty_compass/track/get_bounty_data

# STORAGE (tracking_data):
# {
#   active:false/true,
#   rewarder_uuid:"uuid-mess-in-hyphened-hexidecimal",
#   deaths:#,
#   id:#,
#   player:false,
#   target_uuid:"uuid-mess-in-hyphened-hexidecimal"
# }

data remove storage hunters:temp data.tracking_data.track_type

#check if deceased
$execute if data storage hunters:temp data.tracking_data{player:true} unless score %$(target_uuid) hu.deaths matches $(deaths) run return fail
$execute if data storage hunters:temp data.tracking_data{player:false} unless score $(target_uuid) hu.deaths matches $(deaths) run return fail

#check if unloaded
$execute unless entity $(target_uuid) if score %$(target_uuid) hu.deaths matches $(deaths) run return run data merge storage hunters:temp {data:{tracking_data:{track_type:0}}}

#check if entity loaded
$execute if entity $(target_uuid) run return run data merge storage hunters:temp {data:{tracking_data:{track_type:1}}}

# "track_type"
# 1 = in loaded chunks
# 0 = unloaded but alive
# undefined = deceased