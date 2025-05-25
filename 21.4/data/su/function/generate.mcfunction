data merge storage su:temp {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}
execute unless score @s su.uuid.0 matches -2147483648.. run function su:zzz/store_uuid

execute store result score 0= su.main run scoreboard players operation 1= su.main = @s su.uuid.0
execute store result storage su:temp 0 int 1 run scoreboard players operation 0= su.main %= 256 su.num
execute store result score 2= su.main run scoreboard players operation 1= su.main /= 256 su.num
execute store result storage su:temp 1 int 1 run scoreboard players operation 1= su.main %= 256 su.num
execute store result score 3= su.main run scoreboard players operation 2= su.main /= 256 su.num
execute store result storage su:temp 2 int 1 run scoreboard players operation 2= su.main %= 256 su.num
execute store result storage su:temp 3 int 1 run scoreboard players operation 3= su.main /= 256 su.num

execute store result score 0= su.main run scoreboard players operation 1= su.main = @s su.uuid.1
execute store result storage su:temp 4 int 1 run scoreboard players operation 0= su.main %= 256 su.num
execute store result score 2= su.main run scoreboard players operation 1= su.main /= 256 su.num
execute store result storage su:temp 5 int 1 run scoreboard players operation 1= su.main %= 256 su.num
execute store result score 3= su.main run scoreboard players operation 2= su.main /= 256 su.num
execute store result storage su:temp 6 int 1 run scoreboard players operation 2= su.main %= 256 su.num
execute store result storage su:temp 7 int 1 run scoreboard players operation 3= su.main /= 256 su.num

execute store result score 0= su.main run scoreboard players operation 1= su.main = @s su.uuid.2
execute store result storage su:temp 8 int 1 run scoreboard players operation 0= su.main %= 256 su.num
execute store result score 2= su.main run scoreboard players operation 1= su.main /= 256 su.num
execute store result storage su:temp 9 int 1 run scoreboard players operation 1= su.main %= 256 su.num
execute store result score 3= su.main run scoreboard players operation 2= su.main /= 256 su.num
execute store result storage su:temp a int 1 run scoreboard players operation 2= su.main %= 256 su.num
execute store result storage su:temp b int 1 run scoreboard players operation 3= su.main /= 256 su.num

execute store result score 0= su.main run scoreboard players operation 1= su.main = @s su.uuid.3
execute store result storage su:temp c int 1 run scoreboard players operation 0= su.main %= 256 su.num
execute store result score 2= su.main run scoreboard players operation 1= su.main /= 256 su.num
execute store result storage su:temp d int 1 run scoreboard players operation 1= su.main %= 256 su.num
execute store result score 3= su.main run scoreboard players operation 2= su.main /= 256 su.num
execute store result storage su:temp e int 1 run scoreboard players operation 2= su.main %= 256 su.num
execute store result storage su:temp f int 1 run scoreboard players operation 3= su.main /= 256 su.num

function su:zzz/get_hexes with storage su:temp
function su:zzz/concat_uuid with storage su:temp