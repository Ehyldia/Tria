# Give Sniper
# Gives a weapon to the source entity

# Weapon ID
scoreboard players set @s 1stWeapon 5

# Firerate and reload time
scoreboard players set @s 1stFirerate 0
scoreboard players set @s 1stReloadTime 80

# Loader Size
scoreboard players set @s 1stLoadCapacity 1

# Bullets Damages (20 = one heart)
scoreboard players set @s 1stWeaponDamage 150
scoreboard players set @s 1stHeadDamage 200

# Inaccuracy of the weapon. The higher this number is, the higher the spread of the bullets will be (The maximum shift if 0.04 * Inaccuracy degrees)
scoreboard players set @s 1stInaccuracy 2

# Recoil of the weapon (in 10th of degrees)
scoreboard players set @s 1stRecoil 50

# Scope strength (if this tag is given, the scope will give a slowness effect)
tag @s remove 1stStrongScope

# Explosive (if this tag is given, the weapon will shoot explosive bullets)
tag @s add 1stExplosive

# Other
scoreboard players set @s 1stAmoLoaded 0
scoreboard players add @s 1stCdShoot 0
scoreboard players add @s 1stReloading 0
