# similar to break but without effects

# offset for the block
execute positioned ~ ~ ~ run kill @e[tag=small,distance=..0.01]
# kill interactions
execute positioned ~0.03125 ~ ~0.03125 run kill @e[tag=interaction,distance=..0.01]
