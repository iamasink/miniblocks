# similar to break but without effects

# offset for the block display, otherwise it may find the wrong one!
# because its origin position is slightly different, at the northwest corner instead of the centre like interactions
execute positioned ~-0.01 ~ ~-0.01 run kill @e[tag=miniblocks.miniblock,limit=1,sort=nearest]
# kill interactions for this block
execute positioned ~ ~ ~ run kill @e[tag=miniblocks.interaction,limit=6,sort=nearest]
