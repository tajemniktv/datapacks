#the witch
summon villager ~ ~ ~ {CustomName:"{\"text\":\"Shinigami Rem\"}",Silent:1b,Invulnerable:1b,Tags:["wt.shinigami"],Team:"wt.friendly",NoAI:1b,CanPickUpLoot:0b,CareerLevel:1,InLove:0,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:9999999,ShowParticles:0b}],Offers:{Recipes:[{buy:{id:"minecraft:poisonous_potato",Count:4b},buyB:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}},sell:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:invisibility"}}},{rewardExp:1b,maxUses:1,buy:{id:"minecraft:poisonous_potato",Count:64b},buyB:{id:"minecraft:enchanted_golden_apple",Count:1b},sell:{id:"minecraft:nether_star",Count:1b}},{maxUses:2,buy:{id:"minecraft:poisonous_potato",Count:16b},buyB:{id:"minecraft:totem_of_undying",Count:1b},sell:{id:"minecraft:bone_meal",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Skull Dust\",\"color\":\"yellow\",\"italic\":false}"}}}},{buy:{id:"minecraft:poisonous_potato",Count:5b},buyB:{id:"minecraft:experience_bottle",Count:1b},sell:{id:"minecraft:paper",Count:1b,tag:{HideFlags:1,Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],RepairCost:99999999,display:{Name:"{\"text\":\"Scroll of Shinigami\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"\\\"Drop this to me and come closer,\"}","{\"text\":\"I will take care of your Shinigami Wings\\\"\"}"]}}}},{rewardExp:1b,maxUses:1,buy:{id:"minecraft:poisonous_potato",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:"{\"text\":\"Mysterious Potion\",\"color\":\"light_purple\"}"},Potion:"minecraft:water",CustomPotionColor:0,HideFlags:32,CustomPotionEffects:[{Id:20b,Amplifier:5b,Duration:20,ShowParticles:0b}]}}}]}}
#visuals
summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b,tag:{Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}]}},{}],Invisible:1b,NoGravity:1b,Marker:1b,Tags:["wt.shinigami_wing"]}
#overpowering the witch
tag @e[type=minecraft:witch,sort=nearest,limit=1,distance=..2] add wt.shinigami
data merge entity @e[type=minecraft:witch,sort=nearest,limit=1,distance=..2] {ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b,tag:{RepairCost:99999999,HideFlags:1,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUIDLeast:233217,UUIDMost:736971,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1,Operation:0,UUIDLeast:903708,UUIDMost:932627,Slot:"chest"}],display:{Name:"{\"text\":\"Shinigami Wings [setup]\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}},{}],ArmorDropChances:[0.085F,0.085F,0.1F,0.085F],Attributes:[{Name:generic.maxHealth,Base:50},{Name:generic.movementSpeed,Base:0.35},{Name:generic.attackDamage,Base:3},{Name:generic.followRange,Base:4},{Name:generic.knockbackResistance,Base:1.5},{Name:generic.armor,Base:2}]}