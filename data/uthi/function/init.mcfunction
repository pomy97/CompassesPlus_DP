#universal scoreboards
scoreboard objectives add uthipacks.installed dummy
scoreboard players set UthiLib uthipacks.installed 1

#utils
scoreboard objectives add uthi.raycastSteps dummy

#teams
team add uthi.no_collision ""
team modify uthi.no_collision collisionRule never
team modify uthi.no_collision seeFriendlyInvisibles false

function uthi:tick