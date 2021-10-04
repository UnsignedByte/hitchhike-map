scoreboard players set start story-intro 1
schedule function generated:story/intro/start 10t

scoreboard players set @e[tag=npc-simon] dialogue-status 1
tag @e[tag=npc-simon] add selected_npc
tag @a[x=916,y=64,z=191,dx=2,dz=7,dy=2,sort=nearest,limit=1] add npc_selector