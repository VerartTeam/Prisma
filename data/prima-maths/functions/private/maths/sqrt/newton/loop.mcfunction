#> prima-maths:private/maths/sqrt/newton/loop


## iteration
scoreboard players operation #sqrt_sub_1 psm.maths.interface = .input psm.maths.interface

scoreboard players operation #sqrt_sub_1 psm.maths.interface *= #1000 psm.maths.const
scoreboard players operation #sqrt_sub_1 psm.maths.interface /= .output psm.maths.interface

scoreboard players operation #sqrt_sub_1 psm.maths.interface += .output psm.maths.interface

scoreboard players operation #sqrt_sub_1 psm.maths.interface /= #2 psm.maths.const

scoreboard players operation .output psm.maths.interface = #sqrt_sub_1 psm.maths.interface


## check condition
scoreboard players operation #sqrt_sub_1 psm.maths.interface = .output psm.maths.interface

scoreboard players operation #sqrt_sub_1 psm.maths.interface *= .output psm.maths.interface
scoreboard players operation #sqrt_sub_1 psm.maths.interface /= #1000 psm.maths.const


scoreboard players operation #sqrt_cond psm.maths.interface = .input psm.maths.interface
scoreboard players operation #sqrt_cond psm.maths.interface -= #sqrt_sub_1 psm.maths.interface

execute if score #sqrt_cond psm.maths.interface matches ..-1 run scoreboard players operation #sqrt_cond psm.maths.interface *= #-1 psm.maths.const


## loop
# error
scoreboard players add #sqrt_loop psm.maths.interface 1
execute if score #sqrt_loop psm.maths.interface matches 1000.. run function prima-maths:private/maths/sqrt/newton/loop

# while
execute if score #sqrt_cond psm.maths.interface > #sqrt_error psm.maths.interface run function prima-maths:private/maths/sqrt/newton/loop