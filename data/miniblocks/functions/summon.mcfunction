#execute as @e[tag=small] at @s run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["breakinteraction"],attack:{timestamp:-1},interaction:{timestamp:-1}}

# summons block display. view range is 0 so it is invisible until it's changed later.
summon minecraft:block_display ~ ~ ~ {shadow_radius:0,width:1f,height:1f,block_state:{Name:"minecraft:stone"},Tags:["small"],view_range:0f}
# modifies scale to be 1 pixel x 1 pixel (1/16th a block). for some reason this can't be done when summoning it but whatever
execute as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s transformation.scale set value [0.0625f,0.0625f,0.0625f]
# change the block state from the player, @s is the player so we can't use as
execute at @e[type=minecraft:block_display,distance=..0.01] run data modify entity @e[type=minecraft:block_display,distance=..0.01,limit=1] block_state.Name set from entity @s SelectedItem.id
# substitute items that can be placed. todo- add others but im lazy
execute if entity @s[nbt={SelectedItem:{id:"minecraft:redstone"}}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Name set value redstone_wire
execute if entity @s[nbt={SelectedItem:{id:"minecraft:beetroot_seeds"}}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Name set value beetroots
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wheat_seeds"}}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Name set value wheat

# it may be possible to improve how connected things look but yeah
# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~ ~ ~-0.0625 if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.north set value side
# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~ ~ ~-0.0625 if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.south set value side

# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~ ~ ~0.0625 if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.north set value side
# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~ ~ ~0.0625 if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.south set value side


# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~-0.0625 ~ ~ if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.east set value side
# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~-0.0625 ~ ~ if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.west set value side

# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~0.0625 ~ ~ if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.east set value side
# execute as @e[type=minecraft:block_display,distance=..0.01] at @s positioned ~0.0625 ~ ~ if entity @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:redstone_wire"}}] run data modify entity @s block_state.Properties.west set value side

# modify the view range so the block is visible. this prevents glitchyness due to being unable to summon at a lower scale (and instead editing it later)
execute as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s view_range set value 1

# set the facing property based on which way the player's facing. this is used for stairs and stuff like that
#north
execute if entity @s[scores={rotation=135..180}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Properties.facing set value north
execute if entity @s[scores={rotation=-180..135}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Properties.facing set value north
#east
execute if entity @s[scores={rotation=-135..-45}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Properties.facing set value east
#south
execute if entity @s[scores={rotation=-45..45}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Properties.facing set value south
#west
execute if entity @s[scores={rotation=45..135}] as @e[type=minecraft:block_display,distance=..0.01] run data modify entity @s block_state.Properties.facing set value west


# summon the 6 interactions for placing blocks (any of them can be hit to break it)
 execute positioned ~0.001 ~ ~ run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["eastinteraction","interaction"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute positioned ~-0.001 ~ ~ run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["westinteraction","interaction"],attack:{timestamp:-1},interaction:{timestamp:-1}}
 execute positioned ~ ~ ~0.001 run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["southinteraction","interaction"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute positioned ~ ~ ~-0.001 run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["northinteraction","interaction"],attack:{timestamp:-1},interaction:{timestamp:-1}}
 execute positioned ~ ~0.001 ~ run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["upinteraction","interaction"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute positioned ~ ~-0.001 ~ run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["downinteraction","interaction"],attack:{timestamp:-1},interaction:{timestamp:-1}}

# if something invalid was placed, kill it. (eg tried to use a item such as a sword, which doesn't have a block form)
execute as @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:air"}}] at @s run playsound entity.villager.no master @a ~ ~ ~
execute as @e[type=minecraft:block_display,distance=..0.01,nbt={block_state:{Name:"minecraft:air"}}] at @s run function miniblocks:kill
