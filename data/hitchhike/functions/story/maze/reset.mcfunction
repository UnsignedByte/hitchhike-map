scoreboard objectives remove maze-placed
scoreboard objectives add maze-placed minecraft.used:minecraft.barrier

function generated:story/maze/create/wave/reset

bossbar set minecraft:maze visible false

function hitchhike:story/maze/disable

team modify mazepathdisplay collisionRule never
team modify mazepathdisplay color green