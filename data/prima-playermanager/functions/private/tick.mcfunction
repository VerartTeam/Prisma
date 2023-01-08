#> prima-playermanager:private/tick
schedule function prima-playermanager:private/tick 1t


#if no statut = first connection => add 1 as if he leeft already the game
execute as @a unless score @s psm.plmng.status.player matches -2.. run scoreboard players set @s psm.plmng.leavegame 1
execute as @a[scores={psm.plmng.leavegame=1..}] run function prima-playermanager:private/events-pre/playerjoins

