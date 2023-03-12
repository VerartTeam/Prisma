# input in 10^4
# process in 10^4
# output in 10^4
# arcsine is the almost the same as cosine bc arccos(x) = pi/2 - arcsin(x)

## init
scoreboard players operation #input_arcsin psm.maths.interface = .input psm.maths.interface


scoreboard players set #negate psm.maths.interface 1
execute if score #input_arcsin psm.maths.interface matches ..-1 run scoreboard players set #negate psm.maths.interface -1
execute if score #input_arcsin psm.maths.interface matches ..-1 run scoreboard players operation #input_arcsin psm.maths.interface *= #-1 psm.maths.const

## process
# aprox start
scoreboard players set #output_arcsin psm.maths.interface -187
scoreboard players operation #output_arcsin psm.maths.interface *= #input_arcsin psm.maths.interface
scoreboard players operation #output_arcsin psm.maths.interface /= #10000 psm.maths.const

scoreboard players add #output_arcsin psm.maths.interface 742
scoreboard players operation #output_arcsin psm.maths.interface *= #input_arcsin psm.maths.interface
scoreboard players operation #output_arcsin psm.maths.interface /= #10000 psm.maths.const

scoreboard players remove #output_arcsin psm.maths.interface 2121
scoreboard players operation #output_arcsin psm.maths.interface *= #input_arcsin psm.maths.interface
scoreboard players operation #output_arcsin psm.maths.interface /= #10000 psm.maths.const

scoreboard players add #output_arcsin psm.maths.interface 15707

# sqrt
scoreboard players set .input psm.maths.interface 100000000
scoreboard players operation #input_arcsin psm.maths.interface *= #10000 psm.maths.const

scoreboard players operation .input psm.maths.interface -= #input_arcsin psm.maths.interface

function prima-maths:private/maths/sqrt/newton2/sqrt


scoreboard players operation #sub psm.maths.interface = .output psm.maths.interface
scoreboard players operation #sub psm.maths.interface *= #output_arcsin psm.maths.interface
scoreboard players operation #sub psm.maths.interface /= #10000 psm.maths.const

scoreboard players set .output psm.maths.interface 15706
scoreboard players operation .output psm.maths.interface -= #sub psm.maths.interface


# negate
scoreboard players operation .output psm.maths.interface *= #negate psm.maths.interface
