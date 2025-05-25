$data modify storage su:main in set value $(hex)
data merge storage su:main {out:[I;0,0,0,0]}

# f1edc5b3-756e-4700-7a79-3a3285872bc8

# convert hex uuid into signed int 
# f1edc5b3-756e-4700-7a79-3a3285872bc8 -> -236075597 1970161408 2054765106 -2054739000


# reset scoreboard
# scoreboard players set %int su.main 0

# copy hex char
# data modify storage su:temp hex.char set string storage su:main in 0 1

# set power multiplier
# data modify storage su:temp hex.power set value "7"

# convert hex to int and multiply by power of 16 and add to sum
# function su:skubiak/sum_hex with storage su:temp hex


# f1edc5b3 -> -236075597
scoreboard players set %int su.main 0
data modify storage su:temp hex.char set string storage su:main in 0 1
data modify storage su:temp hex.power set value "7"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 1 2
data modify storage su:temp hex.power set value "6"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 2 3
data modify storage su:temp hex.power set value "5"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 3 4
data modify storage su:temp hex.power set value "4"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 4 5
data modify storage su:temp hex.power set value "3"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 5 6
data modify storage su:temp hex.power set value "2"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 6 7
data modify storage su:temp hex.power set value "1"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 7 8
data modify storage su:temp hex.power set value "0"
function su:skubiak/sum_hex with storage su:temp hex

execute store result storage su:main out[0] int 1 run scoreboard players get %int su.main


# 756e4700 -> 1970161408
scoreboard players set %int su.main 0
data modify storage su:temp hex.char set string storage su:main in 9 10
data modify storage su:temp hex.power set value "7"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 10 11
data modify storage su:temp hex.power set value "6"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 11 12
data modify storage su:temp hex.power set value "5"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 12 13
data modify storage su:temp hex.power set value "4"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 14 15
data modify storage su:temp hex.power set value "3"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 15 16
data modify storage su:temp hex.power set value "2"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 16 17
data modify storage su:temp hex.power set value "1"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 17 18
data modify storage su:temp hex.power set value "0"
function su:skubiak/sum_hex with storage su:temp hex

execute store result storage su:main out[1] int 1 run scoreboard players get %int su.main


# 7a793a32 -> 2054765106
scoreboard players set %int su.main 0
data modify storage su:temp hex.char set string storage su:main in 19 20
data modify storage su:temp hex.power set value "7"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 20 21
data modify storage su:temp hex.power set value "6"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 21 22
data modify storage su:temp hex.power set value "5"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 22 23
data modify storage su:temp hex.power set value "4"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 24 25
data modify storage su:temp hex.power set value "3"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 25 26
data modify storage su:temp hex.power set value "2"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 26 27
data modify storage su:temp hex.power set value "1"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 27 28
data modify storage su:temp hex.power set value "0"
function su:skubiak/sum_hex with storage su:temp hex

execute store result storage su:main out[2] int 1 run scoreboard players get %int su.main


# 85872bc8 -> -2054739000
scoreboard players set %int su.main 0
data modify storage su:temp hex.char set string storage su:main in 28 29
data modify storage su:temp hex.power set value "7"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 29 30
data modify storage su:temp hex.power set value "6"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 30 31
data modify storage su:temp hex.power set value "5"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 31 32
data modify storage su:temp hex.power set value "4"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 32 33
data modify storage su:temp hex.power set value "3"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 33 34
data modify storage su:temp hex.power set value "2"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 34 35
data modify storage su:temp hex.power set value "1"
function su:skubiak/sum_hex with storage su:temp hex
data modify storage su:temp hex.char set string storage su:main in 35 36
data modify storage su:temp hex.power set value "0"
function su:skubiak/sum_hex with storage su:temp hex

execute store result storage su:main out[3] int 1 run scoreboard players get %int su.main

