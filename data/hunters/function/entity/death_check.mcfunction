execute on vehicle run scoreboard players set @s ec.deaths -1
$execute unless score @e[nbt={UUID:$(bounty_UUID)},limit=1] ec.deaths matches -1 run scoreboard players set @e[nbt={UUID:$(bounty_UUID)},limit=1] ec.deaths 1
$execute unless score @e[nbt={UUID:$(bounty_UUID)},limit=1] ec.deaths matches -1 run return run kill @s
$scoreboard players set @e[nbt={UUID:$(bounty_UUID)},limit=1] ec.deaths 0
return fail