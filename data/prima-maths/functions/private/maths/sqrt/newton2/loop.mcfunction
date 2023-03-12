scoreboard players operation #sub psm.maths.interface = .input psm.maths.interface
scoreboard players operation #sub psm.maths.interface /= #lim_1 psm.maths.interface
scoreboard players operation #sub psm.maths.interface += #lim_1 psm.maths.interface
scoreboard players operation #sub psm.maths.interface /= #2 psm.maths.const
scoreboard players operation #lim_2 psm.maths.interface = #lim_1 psm.maths.interface
scoreboard players operation #out psm.maths.interface = #sub psm.maths.interface
scoreboard players operation #out psm.maths.interface -= #lim_2 psm.maths.interface

execute if score #out psm.maths.interface matches -1..1 run scoreboard players operation .output psm.maths.interface = #sub psm.maths.interface
execute unless score #out psm.maths.interface matches -1..1 run scoreboard players operation #lim_1 psm.maths.interface = #sub psm.maths.interface

execute unless score #out psm.maths.interface matches -1..1 run function prima-maths:private/maths/sqrt/newton2/loop