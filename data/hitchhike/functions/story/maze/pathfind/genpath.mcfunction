tag @e remove path-start

execute at @r[tag=maze-mob] run tag @e[sort=nearest,tag=maze-node,limit=1] add path-start

execute unless entity @e[tag=path-goal] run tag @e[tag=maze-node,scores={maze-tile-type=1..2},sort=furthest,limit=100] add path-goal-candidate

tag @e[tag=path-goal-candidate,sort=random,limit=1] add path-goal

tag @e remove path-goal-candidate

schedule function generated:story/sawyer/maze/awaitpathend 5t

function generated:story/maze/pathfind