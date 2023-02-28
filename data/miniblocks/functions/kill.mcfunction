# similar to break but without effects

# offset for the block
execute positioned ~ ~ ~ run kill @e[tag=miniblocks.miniblock,limit=1,sort=nearest]
# kill interactions
execute positioned ~0.03125 ~ ~0.03125 run kill @e[tag=miniblocks.interaction,limit=6,sort=nearest]
