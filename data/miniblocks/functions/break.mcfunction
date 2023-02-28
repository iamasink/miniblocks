# offset
execute positioned ~-0.03125 ~ ~-0.03125 run kill @e[tag=miniblocks.miniblock,limit=1,sort=nearest]
particle block stone ~ ~ ~ 0.0625 0.0625 0.0625 0 1 normal @a
playsound block.stone.break block @a ~ ~ ~ 1 1.7
# kill interactions
kill @e[tag=miniblocks.interaction,limit=6,sort=nearest]