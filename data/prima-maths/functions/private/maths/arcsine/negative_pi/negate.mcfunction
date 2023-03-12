scoreboard players set #sub_arccos psm.maths.interface 2
scoreboard players operation #sub_arccos psm.maths.interface *= .output psm.maths.interface

scoreboard players operation .output psm.maths.interface -= #sub_arccos psm.maths.interface

scoreboard players add .output psm.maths.interface 31415