# input in 10^4
# process in 10^4
# output in 10^4

## init
scoreboard players operation #input_arccos psm.maths.interface = .input psm.maths.interface


scoreboard players set #negate psm.maths.interface 1
execute if score #input_arccos psm.maths.interface matches ..-1 run scoreboard players set #negate psm.maths.interface -1
execute if score #input_arccos psm.maths.interface matches ..-1 run scoreboard players operation #input_arccos psm.maths.interface *= #-1 psm.maths.const

## process
# aprox start
scoreboard players set #output_arccos psm.maths.interface -187
scoreboard players operation #output_arccos psm.maths.interface *= #input_arccos psm.maths.interface
scoreboard players operation #output_arccos psm.maths.interface /= #10000 psm.maths.const

scoreboard players add #output_arccos psm.maths.interface 742
scoreboard players operation #output_arccos psm.maths.interface *= #input_arccos psm.maths.interface
scoreboard players operation #output_arccos psm.maths.interface /= #10000 psm.maths.const

scoreboard players remove #output_arccos psm.maths.interface 2121
scoreboard players operation #output_arccos psm.maths.interface *= #input_arccos psm.maths.interface
scoreboard players operation #output_arccos psm.maths.interface /= #10000 psm.maths.const

scoreboard players add #output_arccos psm.maths.interface 15707

# sqrt
scoreboard players set .input psm.maths.interface 100000000
scoreboard players operation #input_arccos psm.maths.interface *= #10000 psm.maths.const

scoreboard players operation .input psm.maths.interface -= #input_arccos psm.maths.interface

function prima-maths:private/maths/sqrt/newton2/sqrt



scoreboard players operation .output psm.maths.interface *= #output_arccos psm.maths.interface
scoreboard players operation .output psm.maths.interface /= #10000 psm.maths.const


# negate
scoreboard players operation .output psm.maths.interface *= #negate psm.maths.interface