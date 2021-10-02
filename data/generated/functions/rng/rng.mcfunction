# generate random number from 0 to 2^31-1 (mod m)
scoreboard players set rng vars 0
execute if predicate generated:coinflip run scoreboard players add rng vars 1
execute if predicate generated:coinflip run scoreboard players add rng vars 2
execute if predicate generated:coinflip run scoreboard players add rng vars 4
execute if predicate generated:coinflip run scoreboard players add rng vars 8
execute if predicate generated:coinflip run scoreboard players add rng vars 16
execute if predicate generated:coinflip run scoreboard players add rng vars 32
execute if predicate generated:coinflip run scoreboard players add rng vars 64
execute if predicate generated:coinflip run scoreboard players add rng vars 128
execute if predicate generated:coinflip run scoreboard players add rng vars 256
execute if predicate generated:coinflip run scoreboard players add rng vars 512
execute if predicate generated:coinflip run scoreboard players add rng vars 1024
execute if predicate generated:coinflip run scoreboard players add rng vars 2048
execute if predicate generated:coinflip run scoreboard players add rng vars 4096
execute if predicate generated:coinflip run scoreboard players add rng vars 8192
execute if predicate generated:coinflip run scoreboard players add rng vars 16384
execute if predicate generated:coinflip run scoreboard players add rng vars 32768
execute if predicate generated:coinflip run scoreboard players add rng vars 65536
execute if predicate generated:coinflip run scoreboard players add rng vars 131072
execute if predicate generated:coinflip run scoreboard players add rng vars 262144
execute if predicate generated:coinflip run scoreboard players add rng vars 524288
execute if predicate generated:coinflip run scoreboard players add rng vars 1048576
execute if predicate generated:coinflip run scoreboard players add rng vars 2097152
execute if predicate generated:coinflip run scoreboard players add rng vars 4194304
execute if predicate generated:coinflip run scoreboard players add rng vars 8388608
execute if predicate generated:coinflip run scoreboard players add rng vars 16777216
execute if predicate generated:coinflip run scoreboard players add rng vars 33554432
execute if predicate generated:coinflip run scoreboard players add rng vars 67108864
execute if predicate generated:coinflip run scoreboard players add rng vars 134217728
execute if predicate generated:coinflip run scoreboard players add rng vars 268435456
execute if predicate generated:coinflip run scoreboard players add rng vars 536870912
execute if predicate generated:coinflip run scoreboard players add rng vars 1073741824
execute if score _rngm vars matches 1.. run scoreboard players operation rng vars %= _rngm vars
