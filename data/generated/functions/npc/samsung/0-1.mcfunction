tag @a[tag=victim-of-dialogue-by-samsung, limit=1] add npc-eavesdropper
execute at @e[tag=npc-samsung, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-samsung, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Samantha Sung","color":"#945da1","bold":true},"> ",{"text":"Don't mind me, I was just admiring the "},{"text":"Deep Blacks™","bold":true,"italic":true},{"text":" feature of my 230\" Class 8k QLED Smart TV."}]
execute at @e[tag=npc-samsung, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/samsung/0-2 126t
tag @a remove npc-eavesdropper
