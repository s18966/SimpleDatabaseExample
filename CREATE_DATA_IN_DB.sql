INSERT INTO Bohater_Gracza VALUES (20,'Mandarion', 'Galanotel', 1, 10, 10, 15, 2, 100.0, 1800);
INSERT INTO GRACZ VALUES (1800, 'asdsfqwe@gmail.com', 'vikNag', '128.65.23.1', 'IL0veElves<3');
INSERT INTO Bohater_Gracza VALUES (21,'Killer', 'Queen', 10, 100, 100, 150, 40, 10650.0, 1801);
INSERT INTO GRACZ VALUES (1801, 'sfdsfwewqe@gmail.com', 'Konnoe', '154.87.43.20', 'JOJOFan');
INSERT INTO Bohater_Gracza VALUES (22,'Jotaro', 'Josuke', 50, 1000, 250, 1500, 120, 150000.0, 1802);
INSERT INTO GRACZ VALUES (1802, 'gersadasra@gmail.com', 'Korriban', '10.6.232.78', 'St4RPlatinum');
INSERT INTO Bohater_Gracza VALUES (23,'Kissaw', 'Kondo', 4, 30, 30, 35, 10, 230.0, 1803);
INSERT INTO GRACZ VALUES (1803, 'sadsfqwe@gmail.com', 'Mondae', '18.63.231.23', 'LoeeqeR');

INSERT INTO RZECZY VALUES (1, 'Paladins Sword', 10, 0);
INSERT INTO RZECZY VALUES (2, 'Archer Longbow', 40, 0);
INSERT INTO RZECZY VALUES (3, 'DragonBorn Chest', 0, 10);

INSERT INTO Rzeczy_u_Gracza VALUES(20, 1);
INSERT INTO Rzeczy_u_Gracza VALUES(20, 2);
INSERT INTO Rzeczy_u_Gracza VALUES(21, 2);
INSERT INTO Rzeczy_u_Gracza VALUES(21, 3);
INSERT INTO Rzeczy_u_Gracza VALUES(22, 1);
INSERT INTO Rzeczy_u_Gracza VALUES(22, 2);
INSERT INTO Rzeczy_u_Gracza VALUES(23, 2);
INSERT INTO Rzeczy_u_Gracza VALUES(23, 3);

INSERT INTO Server VALUES(1, 'OpenPvP');
INSERT INTO Server VALUES(2, 'OpenPVE');
INSERT INTO Server VALUES(3, 'Closed Beta');

INSERT INTO NPC VALUES (400, 'Old Orc', 20, 5, 1);
INSERT INTO NPC VALUES (401, 'Brave Paladin', 40, 10, 1);
INSERT INTO NPC VALUES (402, 'Seller', 10,1, 1);

INSERT INTO Rzeczy_u_NPC VALUES(1,400);
INSERT INTO Rzeczy_u_NPC VALUES(2,400);
INSERT INTO Rzeczy_u_NPC VALUES(3,400);
INSERT INTO Rzeczy_u_NPC VALUES(1, 401);
INSERT INTO Rzeczy_u_NPC VALUES(2, 401);
INSERT INTO Rzeczy_u_NPC VALUES(3, 401);
INSERT INTO Rzeczy_u_NPC VALUES(1, 402);
INSERT INTO Rzeczy_u_NPC VALUES(2, 402);
INSERT INTO Rzeczy_u_NPC VALUES(3, 402);

INSERT INTO QUESTY VALUES (50000, 'GO AND KILL 10 COWS',1000, 120, 20 ,400); 
INSERT INTO QUESTY VALUES (50001, 'GO AND KILL 10 CHICKEN',120, 1223, 21 ,400); 
INSERT INTO QUESTY VALUES (50002, 'GO AND KILL 20 ORCS',10000, 1200, 21 ,401); 

INSERT INTO Graczy_na_Serverach VALUES (1, 1800);
INSERT INTO Graczy_na_Serverach VALUES (1, 1801);
INSERT INTO Graczy_na_Serverach VALUES (1, 1802);
INSERT INTO Graczy_na_Serverach VALUES (1, 1803);

INSERT INTO MAPA VALUES (1, 'Eden', 200);
INSERT INTO MAPA VALUES (2, 'Eden Prime', 200);
INSERT INTO MAPA VALUES (3, 'Collos', 200);

INSERT INTO Mapy_Na_Serverach VALUES(1, 1);
INSERT INTO Mapy_Na_Serverach VALUES(2, 2);
INSERT INTO Mapy_Na_Serverach VALUES(3, 3);

INSERT INTO SKILL VALUES (7000, 10, 20,4, 'Simple FireBall', 20000);
INSERT INTO SKILL VALUES (7001, 20, 30,6, 'FroseBolt', 30000);
INSERT INTO SKILL VALUES (7002, 15, 18,8, 'Attack Charge', 15000);
INSERT INTO SKILL VALUES (7003, 30, 40,10, 'Lightening', 40000);
INSERT INTO SKILL VALUES (7004, 50, 50,12, 'Meteor Strike', 60000);

INSERT INTO NPC_SkillBook VALUES(401, 7000);
INSERT INTO NPC_SkillBook VALUES(401, 7001);
INSERT INTO NPC_SkillBook VALUES(401, 7003);
INSERT INTO NPC_SkillBook VALUES(400, 7002);
INSERT INTO NPC_SkillBook VALUES(400, 7004);

INSERT INTO SkillBook VALUES (20, 7000);
INSERT INTO SkillBook VALUES (21, 7002);
INSERT INTO SkillBook VALUES (22, 7003);
INSERT INTO SkillBook VALUES (23, 7004);
INSERT INTO SkillBook VALUES (20, 7001);

INSERT INTO Rzeczy VALUES (4, 'LEVELUP,', 0 ,0);
INSERT INTO Rzeczy_u_Gracza VALUES (20, 4); 
INSERT INTO Rzeczy_u_Gracza VALUES (21, 4); 
INSERT INTO Rzeczy_u_Gracza VALUES (22, 4);
INSERT INTO Rzeczy_u_Gracza VALUES (23, 4); 