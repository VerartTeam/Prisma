## input and output
# input: fake float 10^3
# .input psm.maths.interface
#
# output: fake float
# .output psm.maths.interface

## init
scoreboard players set #sqrt_loop psm.maths.interface 0
scoreboard players operation .output psm.maths.interface = .input psm.maths.interface
scoreboard players operation .output psm.maths.interface /= #2 psm.maths.const
scoreboard players set #sqrt_error psm.maths.interface 50

## while loop
execute if score .input psm.maths.interface matches 2.. run function prima-maths:private/maths/sqrt/newton/loop