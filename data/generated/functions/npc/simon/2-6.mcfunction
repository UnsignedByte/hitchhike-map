# Dialogue line #2-7: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Unfortunately, it corrupted when windows formatted it without even asking me! I mean, it did ask me "},{"text":"once","italic":true},{"text":" but didn't even ask to confirm after I accidentally clicked OK. Who does that??"}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/simon/2-7 385t
