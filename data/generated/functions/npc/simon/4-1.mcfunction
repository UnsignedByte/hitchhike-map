# Dialogue line #4-2: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Sorry, I was distracted again; I was admiring my one-of-a-kind "},{"text":"Sedimentary Cryptocrystalline Quartz","color":"#9ba5a8"},{"text":", or Chert for short."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
schedule function generated:npc/simon/4-2 198t
