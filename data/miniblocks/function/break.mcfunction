

# execute positioned ~-0.01 ~ ~-0.01 as @e[tag=miniblocks.miniblock,limit=1,sort=nearest] run say @s

# use block state to display particle
execute as @e[tag=miniblocks.miniblock,limit=1,sort=nearest] run particle minecraft:ash ~ ~0.03125 ~ 0.03125 0.03125 0.03125 0.01 4 normal @a

# particle minecraft:block_crumble{block_state:{Name:"minecraft:stone"}}

playsound minecraft:block.stone.break block @a ~ ~ ~ 1 1.1

# same as kill.mcfunction:
# offset for the block display, otherwise it may find the wrong one!
# because its origin position is slightly different, at the northwest corner instead of the centre like interactions
execute positioned ~-0.01 ~ ~-0.01 run kill @e[tag=miniblocks.miniblock,limit=1,sort=nearest]
# kill interactions for this block
execute positioned ~ ~ ~ run kill @e[tag=miniblocks.interaction,limit=6,sort=nearest]
