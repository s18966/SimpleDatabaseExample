
--wybrac imie i nazwisko bohatera gracza u jakiego poziom bohatera wiekzszy od 4
 Select Imie, nazwisko 
 from bohater_gracza 
 where poziom_bohater > 4; 

--wybrac imie, nazwisko i poziom bohatera gdzie personalne hp wieksze od 40
Select Imie, nazwisko, poziom_bohater 
from bohater_gracza 
where personalne_hp > 40; 

--znalesc mape z imiem jakie zaczyna sie na I
Select * 
from Mapa 
where imie 
like 'I%'; 

--znalesc NPC u jakiego personalna defence wieksza od 20 i personalna attacka mniejsza od 100
Select * 
from npc 
where personalna_defence_npc > 20 
and personalna_attack_npc < 100; 

--znalesc wszystko pro quest, na jakiego nagroda wieksza od 100 i przynalezy on do npc z id 600 czy 800
Select * 
from Questy 
where ilosc_pienadz > 100 
and npc_idnpc = 800 or npc_idnpc = 600;

-- selects z join

--jakie questy maja bohaterowie jaki znajduja sie na 1 serverze
select idQuesta,opis 
from questy q 
join bohater_gracza b on q.bohater_gracza_idbohatera = b.idbohatera 
join gracz g on g.idgracza = b.gracz_idgracza 
LEFT join graczy_na_serverach gs on gs.gracz_idgracza = g.idgracza 
where gs.server_idservera = 1;



--group by selects

--znalesc ile kazdy bohater bedzie otrymywal xp z questow
Select SUM(ILOSC_XP),  b.imie, b.nazwisko
from questy q 
join bohater_gracza b 
on q.bohater_gracza_idbohatera = b.idbohatera
GROUP BY q.BOHATER_GRACZA_IDBOHATERA, b.imie, b.nazwisko;

--znalesc ile graczy na serverach
Select Count(Gracz_idGracza) 
from Graczy_na_serverach
Group by Server_idservera;

