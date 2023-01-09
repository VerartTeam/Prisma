#> prima-playermanager:private/tick
schedule function prima-playermanager:private/tick 1t



## joining players
#if no statut = first connection => add 1 as if he leeft already the game
execute as @a unless score @s psm.plmng.status.player matches -2.. run scoreboard players set @s psm.plmng.leavegame 1
execute as @a[scores={psm.plmng.leavegame=1..}] run function prima-playermanager:private/events-pre/playerjoins



## online players
# one team left
scoreboard players set #teamsOnline psm.plmng.status 0
function prima-playermanager:config/teams
execute if score #teamsOnline psm.plmng.status matches 1 run function prima-playermanager:events/playercount/oneteamleft

# no player left
scoreboard players set #playersOnline psm.plmng.status 0
execute as @a[tag=!plmng_count_ignore] run scoreboard players add #playersOnline psm.plmng.status 1
execute if score #teamsOnline psm.plmng.status matches 0 run function prima-playermanager:events/playercount/noplayer
execute if score #teamsOnline psm.plmng.status matches 1 run function prima-playermanager:events/playercount/oneplayer