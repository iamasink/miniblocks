# [miniblocks](https://github.com/iamasink/miniblocks)
https://github.com/iamasink/miniblocks

silly minecraft datapack using the new interaction and block display entities :3  

requires 1.21.4+
I'd suggest you backup your world because maybe something will break (it shouldn't but its good practice!)

run `/function miniblocks:grid` to spawn a plane of miniblocks where you're standing, with the block you're holding.  
also you can do `/execute align xyz run function miniblocks:summon` to spawn a single mini block aligned to the corner  
there is also `/function miniblocks:player-mini` and `/function miniblocks:player-normal` to resize yourself and revert to normal respectively

you can only place other mini blocks by clicking on another  
everything else should be self explanatory  

# how to install
1. download latest .zip from [Releases](https://github.com/iamasink/miniblocks/releases)
2. put the .zip in your world's datapacks folder. There is no need to unzip it.

# things i might add



<details>
  <summary>setting blocks that are connected to work correctly (redstone, fences etc yeah)</summary>
 
```
# it may be possible to improve how connected things look but yeah
# execute as @e[type=minecraft:block_display,limit=1,sort=nearest] at @s positioned ~ ~ ~-0.0625 if entity @e[type=minecraft:block_display,limit=1,sort=nearest,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.north set value side
# execute as @e[type=minecraft:block_display,limit=1,sort=nearest] at @s positioned ~ ~ ~-0.0625 if entity @e[type=minecraft:block_display,limit=1,sort=nearest,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.south set value side

# execute as @e[type=minecraft:block_display,limit=1,sort=nearest] at @s positioned ~ ~ ~0.0625 if entity @e[type=minecraft:block_display,limit=1,sort=nearest,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.north set value side
# execute as @e[type=minecraft:block_display,limit=1,sort=nearest] at @s positioned ~ ~ ~0.0625 if entity @e[type=minecraft:block_display,limit=1,sort=nearest,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.south set value side


# execute as @e[type=minecraft:block_display,limit=1,sort=nearest] at @s positioned ~-0.0625 ~ ~ if entity @e[type=minecraft:block_display,limit=1,sort=nearest,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.east set value side
# execute as @e[type=minecraft:block_display,limit=1,sort=nearest] at @s positioned ~-0.0625 ~ ~ if entity @e[type=minecraft:block_display,limit=1,sort=nearest,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.west set value side

# execute as @e[type=minecraft:block_display,limit=1,sort=nearest] at @s positioned ~0.0625 ~ ~ if entity @e[type=minecraft:block_display,limit=1,sort=nearest,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.east set value side
# execute as @e[type=minecraft:block_display,limit=1,sort=nearest] at @s positioned ~0.0625 ~ ~ if entity @e[type=minecraft:block_display,limit=1,sort=nearest,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.west set value side
```
  
</details>

# demo
https://youtu.be/GIXlmhbBgm4



