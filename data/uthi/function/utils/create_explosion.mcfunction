$tellraw @a[tag=uthi.dev] "Created explosion using enchantment \"$(enchantment)\""
$summon minecraft:armor_stand ~ ~ ~ {NoAI:true,\
    Invulnerable:true,\
    Invisible:true,\
    NoGravity:true,\
    ArmorItems:[\
        {id:"minecraft:wheat_seeds",components:{enchantments:{levels:{"$(enchantment)":1}}}},\
        {},\
        {},\
        {}\
    ],\
    Team:uthi.no_collision,\
    Silent:true,\
    DisabledSlots:4144959,\
    Tags:["uthi.explosion"]}
