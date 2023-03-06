## setup
scoreboard players set .output psm.maths.interface 0
scoreboard players operation .input_2 psm.maths.interface = .input psm.maths.interface
scoreboard players operation .input_2 psm.maths.interface *= #1000 psm.maths.const


## binary search (see python script)

#32768
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 32768
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 32768

#16384
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 16384
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 16384

#8192
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 8192
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 8192

#4096
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 4096
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 4096

#2048
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 2048
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 2048

#1024
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 1024
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 1024

#512
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 512
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 512

#256
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 256
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 256

#128
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 128
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 128

#64
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 64
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 64

#32
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 32
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 32

#16
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 16
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 16

#8
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 8
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 8

#4
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 4
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 4

#2
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 2
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 2

#1
scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface
scoreboard players add #sqrt_sub psm.maths.interface 1
scoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface
execute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface 1