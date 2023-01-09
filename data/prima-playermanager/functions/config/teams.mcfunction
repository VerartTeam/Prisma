#> prima-playermanager:config/teams
#
# ██████╗ ██████╗ ██╗███████╗███╗   ███╗ █████╗ 
# ██╔══██╗██╔══██╗██║██╔════╝████╗ ████║██╔══██╗
# ██████╔╝██████╔╝██║███████╗██╔████╔██║███████║
# ██╔═══╝ ██╔══██╗██║╚════██║██║╚██╔╝██║██╔══██║
# ██║     ██║  ██║██║███████║██║ ╚═╝ ██║██║  ██║
# ╚═╝     ╚═╝  ╚═╝╚═╝╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝
#
# This file is a config file. It will be automaticly executed in its conditions of activation. Refers to the README.md for more infos
# Change the content of this file in function of what you are using on your map.
# 
# Add and rename a line for each team playing in your game.
# This file will be used to detect when only one team left.
#
# Follow the following template:
# execute as @a[team=TEAMNAME,tag=!plmng_count_ignore,limit=1] run scoreboard players add #teamsOnline psm.plmng.status 1
#


execute as @a[team=TEAMNAME,tag=!plmng_count_ignore,limit=1] run scoreboard players add #teamsOnline psm.plmng.status 1