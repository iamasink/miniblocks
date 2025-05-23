#execute as @e[tag=miniblocks.miniblock] at @s run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["breakinteraction"],attack:{timestamp:0},interaction:{timestamp:0}}
# summons block display. https://bugs.mojang.com/browse/MC-259838.
# the block_state as stone is used if the executor isn't a player
summon minecraft:block_display ~ ~ ~ {shadow_radius:0,width:1f,height:1f,block_state:{Name:"minecraft:stone"},Tags:["miniblocks.miniblock"],transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.0625f,0.0625f,0.0625f],right_rotation:[0f,0f,0f,1f]},view_range:0f}

# summon tiny invisible shulker for collision
# summon minecraft:shulker ~ ~ ~ {NoAI:1b,Silent:1b,Tags:["miniblocks.shulker"],OnGround:1b,AttachFace:0b,]}
# summon minecraft:armor_stand ~0.03125 ~ ~0.03125 {Tags:["miniblocks.shulkerstand"],Marker:1b,Invisible:1b,Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:0b,CustomNameVisible:0b,NoAI:1b,Invisible:1b,Tags:["miniblocks.shulker"],attributes:[{id:"minecraft:scale",base:0.0625}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b,show_icon:0b}]}]}


# modifies scale to be 1 pixel x 1 pixel (1/16th a block). for some reason this can't be done when summoning it but whatever
# execute as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s transformation.scale set value [0.0625f,0.0625f,0.0625f]
# change the block state from the player, @s is the player so we can't use execute as
execute at @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @e[type=minecraft:block_display,limit=1,sort=nearest] block_state.Name set from entity @s SelectedItem.id
# substitute items that can be placed. todo- add others but im lazy

execute if entity @s[nbt={SelectedItem:{id:"minecraft:redstone"}}] as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s block_state.Name set value redstone_wire
execute if entity @s[nbt={SelectedItem:{id:"minecraft:beetroot_seeds"}}] as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s block_state.Name set value beetroots
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wheat_seeds"}}] as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s block_state.Name set value wheat
execute if entity @s[nbt={SelectedItem:{id:"minecraft:sweet_berries"}}] as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s block_state.Name set value sweet_berry_bush

# modify the view range so the block is visible. this prevents glitchyness due to being unable to summon at a lower scale (and instead editing it later)
execute as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s view_range set value 1

# set the facing property based on which way the player's facing. this is used for stairs and stuff like that
#north
execute if entity @s[scores={miniblocks.rotation=135..180}] as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s block_state.Properties.facing set value north
execute if entity @s[scores={miniblocks.rotation=-180..135}] as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s block_state.Properties.facing set value north
#east
execute if entity @s[scores={miniblocks.rotation=-135..-45}] as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s block_state.Properties.facing set value east
#south
execute if entity @s[scores={miniblocks.rotation=-45..45}] as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s block_state.Properties.facing set value south
#west
execute if entity @s[scores={miniblocks.rotation=45..135}] as @e[type=minecraft:block_display,limit=1,sort=nearest] run data modify entity @s block_state.Properties.facing set value west

# some blocks are flipped
execute if entity @s[nbt={SelectedItem:{id:"minecraft:furnace"}}] run function miniblocks:facingflipped
execute if entity @s[nbt={SelectedItem:{id:"minecraft:blast_furnace"}}] run function miniblocks:facingflipped
execute if entity @s[nbt={SelectedItem:{id:"minecraft:command_block"}}] run function miniblocks:facingflipped
execute if entity @s[nbt={SelectedItem:{id:"minecraft:chain_command_block"}}] run function miniblocks:facingflipped
execute if entity @s[nbt={SelectedItem:{id:"minecraft:repeating_command_block"}}] run function miniblocks:facingflipped
execute if entity @s[nbt={SelectedItem:{id:"minecraft:repeater"}}] run function miniblocks:facingflipped
execute if entity @s[nbt={SelectedItem:{id:"minecraft:comparator"}}] run function miniblocks:facingflipped
execute if entity @s[nbt={SelectedItem:{id:"minecraft:piston"}}] run function miniblocks:facingflipped
execute if entity @s[nbt={SelectedItem:{id:"minecraft:sticky_piston"}}] run function miniblocks:facingflipped


# summon the 6 interactions for placing blocks (any of them can be hit to break it)
 execute positioned ~0.001 ~ ~ run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.eastinteraction","miniblocks.interaction"],attack:{timestamp:0},interaction:{timestamp:0}}
execute positioned ~-0.001 ~ ~ run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.westinteraction","miniblocks.interaction"],attack:{timestamp:0},interaction:{timestamp:0}}
 execute positioned ~ ~ ~0.001 run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.southinteraction","miniblocks.interaction"],attack:{timestamp:0},interaction:{timestamp:0}}
execute positioned ~ ~ ~-0.001 run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.northinteraction","miniblocks.interaction"],attack:{timestamp:0},interaction:{timestamp:0}}
 execute positioned ~ ~0.001 ~ run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.upinteraction","miniblocks.interaction"],attack:{timestamp:0},interaction:{timestamp:0}}
execute positioned ~ ~-0.001 ~ run summon interaction ~0.03125 ~ ~0.03125 {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.downinteraction","miniblocks.interaction"],attack:{timestamp:0},interaction:{timestamp:0}}

# if something invalid was placed, kill it. (eg tried to use a item such as a sword, which doesn't have a block form)
execute as @e[type=minecraft:block_display,limit=1,sort=nearest,nbt={block_state:{Name:"minecraft:air"}}] at @s run playsound entity.villager.no master @a ~ ~ ~
execute as @e[type=minecraft:block_display,limit=1,sort=nearest,nbt={block_state:{Name:"minecraft:air"}}] at @s run function miniblocks:kill
