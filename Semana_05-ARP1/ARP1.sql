-- Curso de Engenharia de Software - UniEVANGÉLICA 
-- Disciplina de Sisetmas Gerenciadores de Banco de Dados
-- Dev: Pedro Afonso Ferreira Leite - 2120431 
-- 02/04/2023

-- ARP 1 

-- DML | Consultorios

-- INSERT

insert into Consultorios (id, nome, localizacao) values (1, 'Heritage Pharmaceuticals Inc', '50875 Fremont Road');
insert into Consultorios (id, nome, localizacao) values (2, 'The Hain Celestial Group, Inc.', '54 Algoma Parkway');
insert into Consultorios (id, nome, localizacao) values (3, 'The Wellness Center for Research and Education', '49201 Hanover Crossing');
insert into Consultorios (id, nome, localizacao) values (4, 'Accord Healthcare, Inc.', '3719 Calypso Hill');
insert into Consultorios (id, nome, localizacao) values (5, 'BluePoint Laboratories', '1 Loeprich Terrace');

-- UPDATE

update Consultorios SET nome='MoonSafe Heal' where id = 1;
update Consultorios SET nome='Taligado Saudes' where id = 2;

-- DELETE

delete from Consultorios where id = 5;

-- DML | Profissionais

-- INSERT

insert into Profissionais (id, nome, localizacao, crm) values (1, 'Arluene Purry', '94 Little Fleur Parkway', 074167);
insert into Profissionais (id, nome, localizacao, crm) values (2, 'Thomas Duffell', '2268 Columbus Pass', 762772);
insert into Profissionais (id, nome, localizacao, crm) values (3, 'Paddie Sans', '6 Towne Pass', 044520);
insert into Profissionais (id, nome, localizacao, crm) values (4, 'Waring Catt', '7 Homewood Road', 029479);
insert into Profissionais (id, nome, localizacao, crm) values (5, 'Laurie Frude', '2799 Holmberg Junction', 842239);

-- UPDATE

update Profissionais SET nome='Tomas Duffell' where id = 2;
update Profissionais SET crm='842239' where id = 5;

-- DELETE

delete from Profissionais where id = 3;

-- DML | Pacientes

-- INSERT

insert into Pacientes (id, nome, data_nascimento, num_convenio) values (1, 'Rolando Dresser', '06-02-1993', '43-478-6139');
insert into Pacientes (id, nome, data_nascimento, num_convenio) values (2, 'Andris Fancet', '19-06-1993', '97-529-3339');
insert into Pacientes (id, nome, data_nascimento, num_convenio) values (3, 'Curry Niezen', '19-06-1996', '78-569-2852');
insert into Pacientes (id, nome, data_nascimento, num_convenio) values (4, 'Burke Marfield', '29-09-1997', '19-461-6910');
insert into Pacientes (id, nome, data_nascimento, num_convenio) values (5, 'Nickey Streater', '19-03-1990', '14-524-3768');

-- UPDATE

update Pacientes SET data_nascimento='06-03-1992' where id = 1;
update Pacientes SET num_convenio='19-461-6810' where id = 4;

-- DELETE

delete from Pacientes where id = 2;

-- DML | Agendamentos

-- INSERT

insert into Agendamentos (id, data_hora, paciente_id, profissional_id, consultorio_id) values (1, '30-12-2022', 5, 3, 4);
insert into Agendamentos (id, data_hora, paciente_id, profissional_id, consultorio_id) values (2, '15-06-2022', 5, 2, 3);
insert into Agendamentos (id, data_hora, paciente_id, profissional_id, consultorio_id) values (3, '28-06-2022', 4, 2, 4);
insert into Agendamentos (id, data_hora, paciente_id, profissional_id, consultorio_id) values (4, '12-12-2022', 1, 4, 3);
insert into Agendamentos (id, data_hora, paciente_id, profissional_id, consultorio_id) values (5, '07-10-2022', 3, 4, 2);

-- UPDATE

update Agendamentos SET profissional_id='5' where id = 2;
update Agendamentos SET consultorio='3' where id = 1;

-- DELETE

delete from Agendamentos where id = 3;

-- DQL

-- Operadores lógicos e comparação

SELECT id, data_hora, paciente_id FROM Agendamentos WHERE paciente_id = 5 AND id = 2;
SELECT nome, data_nascimento, num_convenio FROM Pacientes WHERE num_convenio = '14-524-3768' OR data_nascimento = '19-03-1990';
SELECT nome, localizacao, crm FROM Profissionais WHERE NOT (id < 10);

-- Operadores de intervalo

SELECT id, nome
	FROM Consultorios
WHERE id BETWEEN 1 AND 5;

-- Operadores de padrão

SELECT nome FROM Pacientes WHERE nome LIKE 'dm%';

-- Operadores de conjunto

SELECT id, nome FROM Pacientes
	UNION ALL
SELECT id, nome FROM nome.Pacientes;

-- Operadores de agregação

SELECT sum(data_hora) FROM Agendamentos WHERE id = 1;

-- JOINS

-- Inner Join

SELECT Pacientes.nome, Agendamentos.data_hora
FROM Pacientes
INNER JOIN Agendamentos
	ON Pacientes.nome = Agendamentos.data_hora;
	
-- Left Join

SELECT Profissionais.id, Agendamentos.profissionais_id
FROM Profissionais
LEFT JOIN Agendamentos
	ON Profissionais.id = Agendamentos.profissionais_id;

