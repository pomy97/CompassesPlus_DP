# from func 
#
# @s = compass item

# tag the compass
tag @n[dx=1,type=item,tag=hu.item.unboundBountyCompass] add hu.this

# copy data
data modify entity @n[tag=hu.this] Item.components set from entity @s Item.components

#craft effects
tp @s ~.5 ~ ~.5
data merge entity @s {Motion:[0.0d,0.15d,0.0d]}
playsound block.smithing_table.use player @a ~ ~ ~
particle item{ item: { id: compass, components: { "rarity": "uncommon", "enchantment_glint_override": true, "custom_model_data": { "strings": ["hunters:bounty_compass"] }}}} ~.5 ~.25 ~.5 .1 .1 .1 .05 10 normal

tp @n[tag=hu.this] ~.5 ~ ~.5
data merge entity @n[tag=hu.this] {Motion:[0.0d,0.35d,0.0d]}
playsound block.smithing_table.use player @a ~ ~ ~
particle item{ item: { id: compass, components: { "rarity": "uncommon", "enchantment_glint_override": true, "custom_model_data": { "strings": ["hunters:bounty_compass"] }}}} ~.5 ~.25 ~.5 .1 .1 .1 .05 10 normal

#remove tags
tag @n[tag=hu.this] remove hu.item.unboundBountyCompass
tag @n[tag=hu.this] remove hu.this