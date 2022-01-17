# Play music to indicate location
playsound music_disc.chirp record @a 1020 65 64 1.5

# Create opening behind wall
fill 1021 67 63 1021 68 63 minecraft:oak_wall_sign[facing=north,waterlogged=false]
fill 1021 67 62 1021 68 62 minecraft:oak_wall_sign[facing=south,waterlogged=false]

function hitchhike:story/intro/await_keybarrel_open