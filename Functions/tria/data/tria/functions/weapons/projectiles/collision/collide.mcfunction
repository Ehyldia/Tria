# Projectiles Collisions with Walls

execute at @e[tag=ProjCollide] run particle minecraft:block stone ~ ~ ~ 0 0 0 0.1 10 force
execute at @e[tag=ProjCollide] run playsound minecraft:block.stone.break ambient @a[distance=..50] ~ ~ ~ 0.5

execute at @e[tag=ShellCollisions,tag=ProjCollide] run function tria:generic/explosions/small

kill @e[tag=ProjCollide]