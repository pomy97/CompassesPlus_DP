data modify storage su:main in set from entity @s UUID
execute store result score @s su.uuid.0 run data get storage su:main in[0]
execute store result score @s su.uuid.1 run data get storage su:main in[1]
execute store result score @s su.uuid.2 run data get storage su:main in[2]
execute store result score @s su.uuid.3 run data get storage su:main in[3]