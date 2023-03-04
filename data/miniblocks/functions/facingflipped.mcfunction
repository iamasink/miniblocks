# set the facing property based on which way the player's facing. this is used for stairs and stuff like that
#north
execute if entity @s[scores={miniblocks.rotation=135..180}] as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s block_state.Properties.facing set value south
execute if entity @s[scores={miniblocks.rotation=-180..135}] as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s block_state.Properties.facing set value south
#east
execute if entity @s[scores={miniblocks.rotation=-135..-45}] as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s block_state.Properties.facing set value west
#south
execute if entity @s[scores={miniblocks.rotation=-45..45}] as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s block_state.Properties.facing set value north
#west
execute if entity @s[scores={miniblocks.rotation=45..135}] as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s block_state.Properties.facing set value east