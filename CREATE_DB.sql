-- tables
-- Table: Bohater_Gracza
CREATE DATABASE MMORPG;
CREATE TABLE Bohater_Gracza (
    idBohatera integer  NOT NULL,
    Imie varchar(20)  NOT NULL,
    Nazwisko varchar(20)  NOT NULL,
    Poziom_Bohater integer  NOT NULL,
    Personalna_Attack integer  NOT NULL,
    Personalna_Defence integer  NOT NULL,
    Personalne_HP integer  NOT NULL,
    Personalne_MP integer  NOT NULL,
    Ilosc_Pieniadz float(10)  NOT NULL,
    Gracz_idGracza integer  NOT NULL,
    CONSTRAINT Bohater_Gracza_pk PRIMARY KEY (idBohatera)
) ;

-- Table: Gracz
CREATE TABLE Gracz (
    idGracza integer  NOT NULL,
    E_mail varchar(20)  NOT NULL,
    Pseudonim varchar(20)  NOT NULL,
    Adres_IP varchar(30)  NOT NULL,
    Haslo varchar(30)  NOT NULL,
    CONSTRAINT Gracz_pk PRIMARY KEY (idGracza)
) ;

-- Table: Graczy_na_Serverach
CREATE TABLE Graczy_na_Serverach (
    Server_idServera integer  NOT NULL,
    Gracz_idGracza integer  NOT NULL,
    CONSTRAINT Graczy_na_Serverach_pk PRIMARY KEY (Server_idServera,Gracz_idGracza)
) ;

-- Table: Mapa
CREATE TABLE Mapa (
    idMapy integer  NOT NULL,
    Imie varchar(20)  NOT NULL,
    Ilosc_klatek integer  NOT NULL,
    CONSTRAINT Mapa_pk PRIMARY KEY (idMapy)
) ;

-- Table: Mapy_Na_Serverach
CREATE TABLE Mapy_Na_Serverach (
    Mapa_idMapy integer  NOT NULL,
    Server_idServera integer  NOT NULL,
    CONSTRAINT Mapy_Na_Serverach_pk PRIMARY KEY (Mapa_idMapy,Server_idServera)
) ;

-- Table: NPC
CREATE TABLE NPC (
    idNPC integer  NOT NULL,
    Opis_NPC varchar(2000)  NOT NULL,
    Personalna_Attack_NPC integer  NOT NULL,
    Personalna_Defence_NPC integer  NOT NULL,
    Server_idServera integer  NOT NULL,
    CONSTRAINT NPC_pk PRIMARY KEY (idNPC)
) ;

-- Table: NPC_SkillBook
CREATE TABLE NPC_SkillBook (
    NPC_idNPC integer  NOT NULL,
    Skill_idSkill integer  NOT NULL,
    CONSTRAINT NPC_SkillBook_pk PRIMARY KEY (NPC_idNPC,Skill_idSkill)
) ;

-- Table: Questy
CREATE TABLE Questy (
    idQuesta integer  NOT NULL,
    Opis varchar(2000)  NOT NULL,
    Ilosc_XP integer  NOT NULL,
    Ilosc_Pienadz integer  NOT NULL,
    Bohater_Gracza_idBohatera integer  NOT NULL,
    NPC_idNPC integer  NOT NULL,
    CONSTRAINT Questy_pk PRIMARY KEY (idQuesta)
) ;

-- Table: Rzeczy
CREATE TABLE Rzeczy (
    idRzeczy integer  NOT NULL,
    Opis_Rzeczy varchar(2000)  NOT NULL,
    Attack_Rzeczy integer  NOT NULL,
    Defence_Rzeczy integer  NOT NULL,
    CONSTRAINT Rzeczy_pk PRIMARY KEY (idRzeczy)
) ;

-- Table: Rzeczy_u_Gracza
CREATE TABLE Rzeczy_u_Gracza (
    Bohater_Gracza_idBohatera integer  NOT NULL,
    Rzeczy_idRzeczy integer  NOT NULL,
    CONSTRAINT Rzeczy_u_Gracza_pk PRIMARY KEY (Bohater_Gracza_idBohatera,Rzeczy_idRzeczy)
) ;

-- Table: Rzeczy_u_NPC
CREATE TABLE Rzeczy_u_NPC (
    Rzeczy_idRzeczy integer  NOT NULL,
    NPC_idNPC integer  NOT NULL,
    CONSTRAINT Rzeczy_u_NPC_pk PRIMARY KEY (Rzeczy_idRzeczy,NPC_idNPC)
) ;

-- Table: Server
CREATE TABLE Server (
    idServera integer  NOT NULL,
    Nazwa varchar(20)  NOT NULL,
    CONSTRAINT Server_pk PRIMARY KEY (idServera)
) ;

-- Table: Skill
CREATE TABLE Skill (
    idSkill integer  NOT NULL,
    MP_dla_wykorzystania_skilla integer  NOT NULL,
    Attack_Skill integer  NOT NULL,
    Armor_Penetration integer  NOT NULL,
    Opis_Skill varchar(2000)  NOT NULL,
    Ilosc_XP_dla_odblokowania integer  NOT NULL,
    CONSTRAINT Skill_pk PRIMARY KEY (idSkill)
) ;

-- Table: SkillBook
CREATE TABLE SkillBook (
    Bohater_Gracza_idBohatera integer  NOT NULL,
    Skill_idSkill integer  NOT NULL,
    CONSTRAINT SkillBook_pk PRIMARY KEY (Bohater_Gracza_idBohatera,Skill_idSkill)
) ;

-- foreign keys
-- Reference: Bohater_Gracza_Gracz (table: Bohater_Gracza)
ALTER TABLE Bohater_Gracza ADD CONSTRAINT Bohater_Gracza_Gracz
    FOREIGN KEY (Gracz_idGracza)
    REFERENCES Gracz (idGracza);

-- Reference: NPC_Server (table: NPC)
ALTER TABLE NPC ADD CONSTRAINT NPC_Server
    FOREIGN KEY (Server_idServera)
    REFERENCES Server (idServera);

-- Reference: NPC_SkillBook_NPC (table: NPC_SkillBook)
ALTER TABLE NPC_SkillBook ADD CONSTRAINT NPC_SkillBook_NPC
    FOREIGN KEY (NPC_idNPC)
    REFERENCES NPC (idNPC);

-- Reference: NPC_SkillBook_Skill (table: NPC_SkillBook)
ALTER TABLE NPC_SkillBook ADD CONSTRAINT NPC_SkillBook_Skill
    FOREIGN KEY (Skill_idSkill)
    REFERENCES Skill (idSkill);

-- Reference: Questy_Bohater_Gracza (table: Questy)
ALTER TABLE Questy ADD CONSTRAINT Questy_Bohater_Gracza
    FOREIGN KEY (Bohater_Gracza_idBohatera)
    REFERENCES Bohater_Gracza (idBohatera);

-- Reference: Questy_NPC (table: Questy)
ALTER TABLE Questy ADD CONSTRAINT Questy_NPC
    FOREIGN KEY (NPC_idNPC)
    REFERENCES NPC (idNPC);

-- Reference: Rzeczy_u_Gracza_Bohater_Gracza (table: Rzeczy_u_Gracza)
ALTER TABLE Rzeczy_u_Gracza ADD CONSTRAINT Rzeczy_u_Gracza_Bohater_Gracza
    FOREIGN KEY (Bohater_Gracza_idBohatera)
    REFERENCES Bohater_Gracza (idBohatera);

-- Reference: Rzeczy_u_Gracza_Rzeczy (table: Rzeczy_u_Gracza)
ALTER TABLE Rzeczy_u_Gracza ADD CONSTRAINT Rzeczy_u_Gracza_Rzeczy
    FOREIGN KEY (Rzeczy_idRzeczy)
    REFERENCES Rzeczy (idRzeczy);

-- Reference: Rzeczy_u_NPC_NPC (table: Rzeczy_u_NPC)
ALTER TABLE Rzeczy_u_NPC ADD CONSTRAINT Rzeczy_u_NPC_NPC
    FOREIGN KEY (NPC_idNPC)
    REFERENCES NPC (idNPC);

-- Reference: Rzeczy_u_NPC_Rzeczy (table: Rzeczy_u_NPC)
ALTER TABLE Rzeczy_u_NPC ADD CONSTRAINT Rzeczy_u_NPC_Rzeczy
    FOREIGN KEY (Rzeczy_idRzeczy)
    REFERENCES Rzeczy (idRzeczy);

-- Reference: SkillBook_Bohater_Gracza (table: SkillBook)
ALTER TABLE SkillBook ADD CONSTRAINT SkillBook_Bohater_Gracza
    FOREIGN KEY (Bohater_Gracza_idBohatera)
    REFERENCES Bohater_Gracza (idBohatera);

-- Reference: SkillBook_Skill (table: SkillBook)
ALTER TABLE SkillBook ADD CONSTRAINT SkillBook_Skill
    FOREIGN KEY (Skill_idSkill)
    REFERENCES Skill (idSkill);

-- Reference: Table_13_Mapa (table: Mapy_Na_Serverach)
ALTER TABLE Mapy_Na_Serverach ADD CONSTRAINT Table_13_Mapa
    FOREIGN KEY (Mapa_idMapy)
    REFERENCES Mapa (idMapy);

-- Reference: Table_13_Server (table: Mapy_Na_Serverach)
ALTER TABLE Mapy_Na_Serverach ADD CONSTRAINT Table_13_Server
    FOREIGN KEY (Server_idServera)
    REFERENCES Server (idServera);

-- Reference: Table_14_Gracz (table: Graczy_na_Serverach)
ALTER TABLE Graczy_na_Serverach ADD CONSTRAINT Table_14_Gracz
    FOREIGN KEY (Gracz_idGracza)
    REFERENCES Gracz (idGracza);

-- Reference: Table_14_Server (table: Graczy_na_Serverach)
ALTER TABLE Graczy_na_Serverach ADD CONSTRAINT Table_14_Server
    FOREIGN KEY (Server_idServera)
    REFERENCES Server (idServera);

-- End of file.

