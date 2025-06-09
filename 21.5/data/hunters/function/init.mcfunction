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
scoreboard objectives add hu.temp dummy

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

#> Begin the clocks
schedule function hunters:clocks/1s 1s replace
schedule function hunters:clocks/1t 1t replace

# we actually DO need mob loot on, as it's critical for detecting who killed an entity
gamerule doMobLoot true

#load msg
tellraw @a ["",{color:"white",text:"Compasses"},{color:"red",text:"+ "},{color:"green",text:"successfully loaded!\n"},{color:"gray",text:"Created by pomy97\n"},{color:"green",text:"Support the creator!\n"},"  [",{color:"red",underlined:true,text:"Main Channel",click_event:{action:"open_url",url:"https://www.youtube.com/@pomy97?sub_confirmation=1"},hover_event:{action:"show_text",value:["",{text:"Click to go to pomy97's Main Youtube Channel!"}]}},"]\n  [",{color:"red",underlined:true,text:"Second Channel",click_event:{action:"open_url",url:"https://www.youtube.com/@pomy97?sub_confirmation=1"},hover_event:{action:"show_text",value:",[object Object]"}},"]\n  [",{color:"aqua",underlined:true,text:"Bluesky",click_event:{action:"open_url",url:"https://www.youtube.com/@pomy97?sub_confirmation=1"},hover_event:{action:"show_text",value:",[object Object]"}},"]"]