#universal scoreboards
scoreboard objectives add uthipacks.installed dummy
scoreboard players set UthiLib uthipacks.installed 1

#teams
team add uthi.no_collision ""
team modify uthi.no_collision collisionRule never
team modify uthi.no_collision seeFriendlyInvisibles false