summon marker ^-4 ^ ^ {Tags:["maze-firewall-marker","maze-firewall-marker-init"]}
summon marker ^-3 ^ ^ {Tags:["maze-firewall-marker","maze-firewall-marker-init"]}
summon marker ^-2 ^ ^ {Tags:["maze-firewall-marker","maze-firewall-marker-init"]}
summon marker ^-1 ^ ^ {Tags:["maze-firewall-marker","maze-firewall-marker-init"]}
summon marker ^0 ^ ^ {Tags:["maze-firewall-marker","maze-firewall-marker-init"]}
summon marker ^1 ^ ^ {Tags:["maze-firewall-marker","maze-firewall-marker-init"]}
summon marker ^2 ^ ^ {Tags:["maze-firewall-marker","maze-firewall-marker-init"]}
scoreboard players operation @e[tag=maze-firewall-marker-init] maze-weapon-age = @s maze-weapon-age
tag @e remove maze-firewall-marker-init
tp @s ~ ~0.5 ~
