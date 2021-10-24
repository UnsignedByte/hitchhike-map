kill @e[tag=maze-weapon]
tag @a remove maze-mob
kill @e[tag=maze-mob]
scoreboard players set enabled maze 0

function generated:story/maze/create/wave/reset