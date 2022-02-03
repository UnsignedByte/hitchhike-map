tag @a[tag=victim-of-dialogue-by-solomon, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-solomon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #3-4: speak and make noise.
execute at @e[type=villager,tag=npc-solomon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jason Quint","color":"#b68bdd","bold":true},"> ",{"text":"By the way, have you seen my electrical box key? I can't find it and really need it back."}]
execute at @e[type=villager,tag=npc-solomon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-solomon, limit=1] minecraft:black_candle{Enchantments: [{}], display: {Lore: ['{"text":"Runs Android 5.0.2 \\"Lollipop\\".","color":"gray"}','{"text":"Use it by right clicking","color":"blue"}','{"text":"while standing still.","color":"blue"}'], Name: '{"text":"Motorola Moto G 2","color":"gray"}'}, phone: 1b, androidphone: 1b} 1
schedule function generated:npc/solomon/3-end 100t
tag @a remove npc-eavesdropper
