tag @a[tag=victim-of-dialogue-by-solomon, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-solomon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #3-4: speak and make noise.
execute at @e[type=villager,tag=npc-solomon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Solomon Quint","color":"#732424","bold":true},"> ",{"text":"By the way, please remember to return the electrical box key before you leave."}]
execute at @e[type=villager,tag=npc-solomon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-solomon, limit=1] minecraft:black_candle{Enchantments: [{}], display: {Lore: ['{"text":"Runs Android 5.0.2 \\"Lollipop\\".","color":"dark_gray"}'], Name: '{"text":"Motorola Moto G 2","color":"gray"}'}, phone: 1b, androidphone: 1b} 1
schedule function generated:npc/solomon/3-end 156t
tag @a remove npc-eavesdropper
