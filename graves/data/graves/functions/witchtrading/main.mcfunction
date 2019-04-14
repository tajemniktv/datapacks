#calling shinigami
execute as @e[tag=wt.shinigami,type=minecraft:witch] at @s run function graves:witchtrading/shinigami
#reallocating the shinigami_wing
execute as @e[tag=wt.shinigami_wing] at @s unless entity @e[tag=wt.shinigami,type=minecraft:witch,distance=..2] run kill @s

#unleashing the shinigami_wing contract
data merge entity @e[type=minecraft:item,limit=1,sort=random,nbt={Item:{id:"minecraft:elytra",Count:1b,tag:{HideFlags:1,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUIDLeast:233217,UUIDMost:736971,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1,Operation:0,UUIDLeast:903708,UUIDMost:932627,Slot:"chest"}],display:{Name:"\"Shinigami Wings [setup]\"",Lore:["{\"text\":\"...a contract until eternity\"}"]}}}}] {Item:{tag:{display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]},Enchantments:[{id:projectile_protection,lvl:3},{id:thorns,lvl:2},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}]}}}
tag @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUIDLeast:233217,UUIDMost:736971,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1,Operation:0,UUIDLeast:903708,UUIDMost:932627,Slot:"chest"}],display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}}]}] add wt.P.shinigami_wing
tag @e[nbt={ArmorItems:[{},{},{id:"minecraft:elytra",tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUIDLeast:233217,UUIDMost:736971,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1,Operation:0,UUIDLeast:903708,UUIDMost:932627,Slot:"chest"}],display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}},{}]}] add wt.P.shinigami_wing
execute as @e[tag=wt.P.shinigami_wing] at @s run function graves:witchtrading/shinigami_wing
#remove shinigami power
clear @a[nbt=!{FallFlying:1b}] minecraft:firework_rocket{Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{Name:"\"Shinigami Power\"",Lore:["fly through the sky until you die"]}}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_rocket",tag:{Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{Name:"\"Shinigami Power\"",Lore:["fly through the sky until you die"]}}}}]
#calling shinigami_power upon right click
execute as @e[type=minecraft:firework_rocket,nbt={FireworksItem:{tag:{Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{Name:"\"Shinigami Power\"",Lore:["fly through the sky until you die"]}}}}] at @s run function graves:witchtrading/shinigami_power
