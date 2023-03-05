## input and output
# input: int
#.input psm.maths.interface
#
# output: fake float with multiplier of 1000 for a 0.00001 precision
#.output psm.maths.interface

## run


# set angle
execute store result entity @s Rotation[0] float 1 run scoreboard players get .input_2 psm.maths.interface

# tp ^1000 instead of ^1 for the output precision
execute at @s run tp ^ ^ ^1000

# get the output
execute store result score .output psm.maths.interface run data get entity @s Pos[0]

# kill
kill @s