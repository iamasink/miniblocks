execute align xyz run summon marker ~ ~ ~ {Tags:["spawner"]}

execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~

execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}

execute as @e[tag=spawner3] at @s run function miniblocks:summon
kill @e[tag=spawner]
kill @e[tag=spawner2]
kill @e[tag=spawner3]
playsound entity.player.burp master @s ~ ~ ~