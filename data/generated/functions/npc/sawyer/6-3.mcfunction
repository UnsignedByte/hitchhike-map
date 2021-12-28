tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] add npc-eavesdropper
execute at @e[tag=npc-sawyer, limit=1] run tag @a add npc-eavesdropper
# Dialogue line #6-4: speak and make noise.
execute at @e[tag=npc-sawyer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Chris Sawyer","color":"#4fa1a7","bold":true},"> ",{"text":"While you're at it, let me get you some blocks to build with too."}]
execute at @e[tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
execute as @a run function generated:story/maze/weapons/buildtool/give
schedule function generated:npc/sawyer/6-4 126t
tag @a remove npc-eavesdropper
