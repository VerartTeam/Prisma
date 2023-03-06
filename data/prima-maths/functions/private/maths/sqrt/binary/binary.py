len = 16

for i in range(len+1):
    print("#", 2**(len-i),"\n","scoreboard players operation #sqrt_sub psm.maths.interface = .output psm.maths.interface\nscoreboard players add #sqrt_sub psm.maths.interface ", 2**(len-i),"\nscoreboard players operation #sqrt_sub psm.maths.interface *= #sqrt_sub psm.maths.interface\nexecute if score #sqrt_sub psm.maths.interface <= .input_2 psm.maths.interface run scoreboard players add .output psm.maths.interface ",  2**(len-i), "\n",sep="")
    