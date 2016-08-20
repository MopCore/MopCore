-- Deathwhisper Necrolyte pathing
SET @NPC := 202063;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
UPDATE `creature` SET `position_x`=631.8229,`position_y`=229.7292,`position_z`=508.0604 WHERE `guid` IN (202028,202000,201957,201820,202122,202199);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,631.8229,229.7292,508.0604,0,0,0,100,0),
(@PATH,2,643.8733,215.2674,508.2268,0,0,0,100,0),
(@PATH,3,659.0139,215.9635,507.8518,0,0,0,100,0),
(@PATH,4,674.184,213.5833,508.8467,0,0,0,100,0),
(@PATH,5,678.8004,201.066,508.4717,0,0,0,100,0),
(@PATH,6,662.4636,183.0694,507.9585,0,0,0,100,0),
(@PATH,7,650.8941,171.5642,507.7085,0,0,0,100,0),
(@PATH,8,637.7292,155.2569,507.9196,0,0,0,100,0),
(@PATH,9,644.6389,130.2639,510.4212,0,0,0,100,0),
(@PATH,10,654.9896,121.3038,511.9212,0,0,0,100,0),
(@PATH,11,677.7448,136.6528,512.7715,0,0,0,100,0),
(@PATH,12,678.2847,149.1233,507.8965,0,0,0,100,0),
(@PATH,13,677.7448,136.6528,512.7715,0,0,0,100,0),
(@PATH,14,654.9896,121.3038,511.9212,0,0,0,100,0),
(@PATH,15,644.6389,130.2639,510.4212,0,0,0,100,0),
(@PATH,16,637.7292,155.2569,507.9196,0,0,0,100,0),
(@PATH,17,650.8941,171.5642,507.7085,0,0,0,100,0),
(@PATH,18,662.4636,183.0694,507.9585,0,0,0,100,0),
(@PATH,19,678.8004,201.066,508.4717,0,0,0,100,0),
(@PATH,20,674.184,213.5833,508.8467,0,0,0,100,0),
(@PATH,21,659.0139,215.9635,507.8518,0,0,0,100,0),
(@PATH,22,643.8733,215.2674,508.2268,0,0,0,100,0);
DELETE FROM `creature_formations` WHERE `leaderGUID`=@NPC;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(@NPC,@NPC,0,0,2),
(@NPC,202028,7,270,2),
(@NPC,202000,7,306,2),
(@NPC,201957,7,342,2),
(@NPC,201820,7,18,2),
(@NPC,202122,7,54,2),
(@NPC,202199,7,90,2);
