tag @a[tag=victim-of-dialogue-by-fishjar, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-fishjar, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[type=villager,tag=npc-fishjar, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jared Majors","color":"#bdaa77","bold":true},"> ",{"text":"Hey there, welcome to "},{"text":"Jarring Estimations","italic":true},{"text":", your very own coin-counting game show where you win, win, win!"}]
execute at @e[type=villager,tag=npc-fishjar, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/fishjar/0-1 132t
tag @a remove npc-eavesdropper
