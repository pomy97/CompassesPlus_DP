#-------------------------------
# This pack was created by Uthimentius
# Please do not take code, reupload, or claim as your own work!
# Animation Channel: https://www.youtube.com/@uthianimates
# Other Channel: https://www.youtube.com/@uthimentius
# subscribe, maybe?
#-------------------------------


### You're gonna see the prefix 'hu.' a LOT around here.
# This exists simply to avoid some conflicts with other packs,
# and to distinguish our stuff, so that you know that the object was from here


#> Scoreboards
#universal scoreboards
scoreboard objectives add uthipacks.installed dummy
scoreboard players set BountyCompass uthipacks.installed 1

# values
scoreboard objectives add hu.numbers dummy

# mafs
scoreboard objectives add hu.math dummy
scoreboard players set #1 hu.math 1
scoreboard players set #2 hu.math 2
scoreboard players set #4 hu.math 4
scoreboard players set #5 hu.math 5
scoreboard players set #10 hu.math 10
scoreboard players set #20 hu.math 20
scoreboard players set #25 hu.math 25
scoreboard players set #50 hu.math 50
scoreboard players set #100 hu.math 100

#tracking
scoreboard objectives add hu.dimension dummy
scoreboard objectives add hu.posX dummy
scoreboard objectives add hu.posY dummy
scoreboard objectives add hu.posZ dummy
scoreboard objectives add hu.deaths deathCount

#get storage
execute unless data storage hunters:bounty_storage bounty_storage run data merge storage hunters:bounty_storage {bounties:0,bounty_storage:{}}

#> Begin the clocks
schedule function hunters:clocks/1s 1s replace
#schedule function hunters:tick 1t replace

#load msg
tellraw @a "Bounty Compass Loaded"
tellraw @a [{"color": "red","text": "Sub to Uthi!"},{"color": "white","text": " ["},{"color": "gray","text": "www.youtube.com/@uthimentius","italic": true,"clickEvent": {"action": "open_url", "value": "https://www.youtube.com/@uthimentius?sub_confirmation=1"}},{"color": "white","text": "]"}]