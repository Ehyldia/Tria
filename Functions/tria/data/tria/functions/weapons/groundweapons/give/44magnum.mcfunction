# Give 44. Magnum
# Gives a weapon to the source entity

# Weapon ID
scoreboard players set @s 2ndWeapon 1

# Firerate and reload time
scoreboard players set @s 2ndFirerate 10
scoreboard players set @s 2ndReloadTime 100

# Loader Size
scoreboard players set @s 2ndLoadCapacity 6

# Bullets Damages (20 = one heart)
scoreboard players set @s 2ndWeaponDamage 90
scoreboard players set @s 2ndHeadDamage 180

# Inaccuracy of the weapon. The higher this number is, the higher the spread of the bullets will be (The maximum shift if 0.04 * Inaccuracy degrees)
scoreboard players set @s 2ndInaccuracy 10

# Recoil of the weapon (in 10th of degrees)
scoreboard players set @s 2ndRecoil 80

# Scope strength (if this tag is given, the scope will give a slowness effect)
tag @s remove 2ndStrongScope

# Explosive (if this tag is given, the weapon will shoot explosive bullets)
tag @s remove 2ndExplosive

# Other
scoreboard players set @s 2ndAmoLoaded 0
scoreboard players add @s 2ndCdShoot 0
scoreboard players add @s 2ndReloading 0
