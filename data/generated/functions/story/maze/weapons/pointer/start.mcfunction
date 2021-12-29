execute if entity @s[x=-1500,y=9,z=0,dx=135,dy=135,dz=135,tag=maze-mob] as @s at @s run function generated:story/maze/weapons/pointer/_start
execute unless entity @s[x=-1500,y=9,z=0,dx=135,dy=135,dz=135,tag=maze-mob] as @s run function generated:story/maze/weapons/pointer/give
