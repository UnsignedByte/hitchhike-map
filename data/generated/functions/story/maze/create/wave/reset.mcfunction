forceload add -1005 -5 -650.5 20
kill @e[tag=maze-tile]
summon marker -1000 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -1000 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -985 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -985 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -970 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -970 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -955 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -955 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -940 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -940 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -925 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -925 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -910 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -910 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -895 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -895 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -880 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -880 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -865 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -865 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -850 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -850 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -835 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -835 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -820 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -820 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -805 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -805 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -790 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -790 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -775 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -775 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -760 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -760 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -745 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -745 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -730 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -730 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -715 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -715 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -700 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -700 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -685 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -685 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -670 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -670 10 15 {Tags:["maze-tile","maze-tile-init"]}
summon marker -655 10 0 {Tags:["maze-tile","maze-tile-init"]}
summon marker -655 10 15 {Tags:["maze-tile","maze-tile-init"]}
execute as @e[tag=maze-tile-init] at @s run function generated:story/maze/create/wave/rotate
