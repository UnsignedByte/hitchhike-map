tag @e remove path-start
tag @e remove path-goal

execute at @r run tag @e[sort=nearest,tag=maze-node,limit=1] add path-start

tag @e[tag=maze-node,scores={maze-tile-type=1..2},sort=furthest,limit=100] add path-goal-candidate

tag @e[tag=path-goal-candidate,sort=random,limit=1] add path-goal

tag @e remove path-goal-candidate

function generated:story/maze/pathfind