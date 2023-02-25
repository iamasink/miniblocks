#execute as @e[tag=small] at @s run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["breakinteraction"],attack:{timestamp:-1},interaction:{timestamp:-1}}
summon minecraft:block_display ~ ~ ~ {shadow_radius:0,width:1f,height:1f,block_state:{Name:"minecraft:stone"},Tags:["small"],view_range:0f}
execute as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s transformation.scale set value [0.0625f,0.0625f,0.0625f]

execute as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Name set from storage miniblocks:miniblocks block
# substitute items that can be placed
execute if entity @s[nbt={SelectedItem:{id:"minecraft:redstone"}}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Name set value redstone_wire
execute if entity @s[nbt={SelectedItem:{id:"minecraft:beetroot_seeds"}}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Name set value beetroots
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wheat_seeds"}}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Name set value wheat

# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~ ~ ~-0.0625 if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.north set value side
# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~ ~ ~-0.0625 if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.south set value side

# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~ ~ ~0.0625 if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.north set value side
# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~ ~ ~0.0625 if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.south set value side


# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~-0.0625 ~ ~ if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.east set value side
# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~-0.0625 ~ ~ if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.west set value side

# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~0.0625 ~ ~ if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.east set value side
# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~0.0625 ~ ~ if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.west set value side

# for some reason, it wont let me set a scale while summoning it. to avoid glitchyness make it invisible until after its size has been set.
execute as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s view_range set value 1


#north
execute if entity @s[scores={rotation=135..180}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Properties.facing set value north
execute if entity @s[scores={rotation=-180..135}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Properties.facing set value north
#east
execute if entity @s[scores={rotation=-135..-45}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Properties.facing set value east
#south
execute if entity @s[scores={rotation=-45..45}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Properties.facing set value south
#west
execute if entity @s[scores={rotation=45..135}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Properties.facing set value west



 execute positioned ~0.001 ~ ~ run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["eastinteraction","interaction"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute positioned ~-0.001 ~ ~ run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["westinteraction","interaction"],attack:{timestamp:-1},interaction:{timestamp:-1}}
 execute positioned ~ ~ ~0.001 run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["southinteraction","interaction"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute positioned ~ ~ ~-0.001 run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["northinteraction","interaction"],attack:{timestamp:-1},interaction:{timestamp:-1}}
 execute positioned ~ ~0.001 ~ run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["upinteraction","interaction"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute positioned ~ ~-0.001 ~ run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["downinteraction","interaction"],attack:{timestamp:-1},interaction:{timestamp:-1}}

# if something invalid was placed, kill it.
execute as @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:air"}}] at @s run playsound entity.villager.no master @a ~ ~ ~
execute as @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:air"}}] at @s run function miniblocks:kill
