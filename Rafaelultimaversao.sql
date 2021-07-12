---- criar a tabela de admin ----

CREATE TABLE Admin_tb 
(id_admin int not null,
 nome_admin     varchar2(30),
 cargo_admin    varchar2(20)
);

---- selecionar a tabela de admin ---

Select * from Admin_tb   ;

SELECT * from Admin_tb WHERE id_admin < 5;

SELECT nome_admin FROM Admin_tb WHERE nome_admin='Rafael' ORDER BY id_admin DESC ;

SELECT nome_admin, cargo_admin from Admin_tb ;

DELETE FROM Admin_tb WHERE cargo_admin = 'Controlador';

UPDATE Admin_tb
SET id_admin ='10'
WHERE nome_admin ='Joao'
AND cargo_admin ='Controlador'
;

SELECT nome_admin
FROM Admin_tb
ORDER BY nome_admin ;

SELECT *
FROM Admin_tb
WHERE nome_admin Between 'Alfredo' AND 'Rui';

SELECT nome_admin , cargo_admin
FROM Admin_tb
UNION SELECT nome_admin , cargo_admin
FROM Admin_tb
ORDER BY nome_admin ;


-- inserir dados --

begin
    insert into Admin_tb values (1, 'Rafael', 'Gestor');
    insert into Admin_tb values (2, 'Rafael', 'Designer');
    insert into Admin_tb values (3, 'Rafael', 'Chefe');
    insert into Admin_tb values (4, 'Rafael', 'Controlador');
    insert into Admin_tb values (5, 'Rafael', 'Tester');
    insert into Admin_tb values (6, 'Rafael', 'Trabalhador');
    insert into Admin_tb values (7, 'Rui', 'Tester');
    insert into Admin_tb values (8, 'Alfredo', 'Tester');
    commit;
end;

-- alterar para colocar chave primaria --

alter table Admin_tb add constraint id_admin primary key (id_admin);

-------------------------------------------------------------------------------

---- criar a tabela de Trabalhadores ----

CREATE TABLE Trabalhadores_tb 
(id_trabalhador int not null,
 nome_trabalhador     varchar2(30),
 cargo_trabalhador    varchar2(20),
 telemovel_trabalhador  char (9),
 email_trabalhador    varchar2(20),
 cidade_trabalhador  varchar2(20),
 morada_trabalhador  varchar2(150),
 codigoPostal_trabalhador  varchar2(8),
 salario_trabalhador      char (9)
);

Select * from Trabalhadores_tb  ;

SELECT * from Trabalhadores_tb WHERE id_trabalhador < 2 ;

SELECT nome_trabalhador FROM Trabalhadores_tb WHERE nome_trabalhador='Rafael' ORDER BY id_trabalhador DESC ;

SELECT nome_trabalhador, cargo_trabalhador , morada_trabalhador from Trabalhadores_tb ;

DELETE FROM Trabalhadores_tb WHERE cargo_trabalhador = 'Genecologista';

UPDATE Trabalhadores_tb
SET id_trabalhador ='10'
WHERE nome_trabalhador ='Joao'
AND cargo_trabalhador ='Genecologista'
;

SELECT nome_trabalhador
FROM Trabalhadores_tb
ORDER BY nome_trabalhador ;

SELECT *
FROM Trabalhadores_tb
WHERE nome_trabalhador Between 'Luis' AND 'Diogo';

SELECT nome_trabalhador , cargo_trabalhador
FROM Trabalhadores_tb
UNION SELECT nome_trabalhador , cargo_trabalhador
FROM Trabalhadores_tb
ORDER BY nome_trabalhador ;


begin
    insert into Trabalhadores_tb values (1, 'Rafael', 'dentista', 964147896, 'rafael@gmailcom','Seia','Rua direita', 6320211, 690);
    insert into Trabalhadores_tb values (2, 'Luis', 'Médico', 964147852, 'luis@gmailcom','Aveiro','Rua Vagueira', 6320321, 1200);
    insert into Trabalhadores_tb values (3, 'Diogo', 'enfermeiro', 964147789, 'diogol@gmailcom','Coimbra','Zona Industrial', 6320741, 850);
    commit;
end;

alter table Trabalhadores_tb add constraint id_trabalhador primary key (id_trabalhador);

Delete from Trabalhadores_tb where id_trabalhador = 1;
Delete from Trabalhadores_tb where id_trabalhador = 2;
Delete from Trabalhadores_tb where id_trabalhador = 3;


------------------------------------------------------------------------------------

---- criar a tabela de Clientes ----

CREATE TABLE Clientes_tbb 
(id_cliente int not null,
 nome_cliente     varchar2(30),
 telemovel_cliente  char (9),
 email_cliente    varchar2(20),
 cidade_cliente  varchar2(20),
 morada_cliente  varchar2(150),
 codigoPostal_cliente  varchar2(7),
 tipo_consulta_cliente      varchar2(50),
 problema_doenca_cliente      varchar2(50),
 Medico_cliente      varchar2(50)
);

Select * from Clientes_tbb   ;

SELECT * from Clientes_tbb WHERE cidade_cliente like 'Seia' ;

SELECT nome_cliente FROM Clientes_tbb WHERE email_cliente='carlos@gmailcom' ORDER BY codigoPostal_cliente DESC ;

SELECT nome_cliente, tipo_consulta_cliente , morada_cliente from Clientes_tbb ;

DELETE FROM Clientes_tbb WHERE telemovel_cliente = '988456102';

UPDATE Clientes_tbb
SET id_cliente ='11'
WHERE nome_cliente ='Joao'
AND telemovel_cliente ='988456102'
;

SELECT nome_cliente
FROM Clientes_tbb
ORDER BY nome_cliente ;

SELECT *
FROM Clientes_tbb
WHERE nome_cliente Between 'Bruno' AND 'Ze';

SELECT nome_trabalhador , cargo_trabalhador
FROM Trabalhadores_tb
UNION SELECT nome_trabalhador , cargo_trabalhador
FROM Trabalhadores_tb
ORDER BY nome_trabalhador ;


begin
    insert into Clientes_tbb values (1, 'Ze', 964147896, 'ze@gmailcom','Castelo Branco','Rua das flores', 632053,'lavegem dentária' ,'não tinha nada','Rafael');
    insert into Clientes_tbb values (2, 'Carlos', 964147896, 'carlos@gmailcom','Seia','Rua salazar', 6270352,'consulta de rotina' ,'temperatura alta','Diogo');
    insert into Clientes_tbb values (3, 'Bruno', 964147412, 'bruno@gmailcom','Seia','Fonte da 4 bicas', 6270852,'Consulta Programada' ,'Hipertensão Arterial ','Luis');
    commit;
end;
alter table Clientes_tbb add constraint id_cliente primary key (id_cliente);

------------------------------------------------------------------------------------

---- criar a tabela de Clientes ----

CREATE TABLE Faturas_tb
(id_fatura int not null,
 nomecliente_fatura  varchar2(30),
 Orcamento_fatura  varchar2 (9),
 email_fatura    varchar2(20),
 cidade_fatura  varchar2(20),
 morada_fatura  varchar2(150),
 codigoPostal_fatura  varchar2(7),
 tipo_consulta_fatura      varchar2(50),
 Medicoautor_fatura      varchar2(50),
 Data_fatura      varchar2(10)
 
);

Select * from Faturas_tb  ;

SELECT * from Faturas_tb WHERE cidade_fatura like 'Seia' ;

SELECT cidade_fatura , email_fatura  FROM Faturas_tb WHERE email_fatura='carlos@gmailcom' ORDER BY codigoPostal_fatura DESC ;

SELECT nome_cliente, tipo_consulta_cliente , morada_cliente from Clientes_tbb ;

DELETE FROM Faturas_tb WHERE cidade_fatura = 'coja';

UPDATE Faturas_tb
SET id_fatura ='8'
WHERE nomecliente_fatura ='Joao'
AND cidade_fatura ='coja'
;

SELECT nomecliente_fatura
FROM Faturas_tb
ORDER BY nomecliente_fatura ;

SELECT *
FROM Faturas_tb
WHERE nomecliente_fatura Between 'Bruno' AND 'Rafael';

SELECT nomecliente_fatura , morada_fatura
FROM Faturas_tb
UNION SELECT nomecliente_fatura , morada_fatura
FROM Faturas_tb
ORDER BY nomecliente_fatura ;

begin
    insert into Faturas_tb values (4, 'Joao','40 €','joao@gmailcom','Castelo Branco','Rua das zimbre', 632053,'consulta de analise' ,'Rafael','08-02-2020');
    insert into Faturas_tb values (2, 'Carlos','20 euros', 'carlos@gmailcom','Seia','Rua salazar', 6270352,'consulta de rotina' ,'Diogo','03-03-2020');
    insert into Faturas_tb values (3, 'Bruno', '30 euros', 'bruno@gmailcom','Seia','Fonte da 4 bicas', 6270852,'Consulta Programada' ,'Luis','02-04-2020');
    insert into Faturas_tb values (5, 'Rafael','60 euros', 'rafael123@gmailcom','Gouveia','Fonte da estrela', 6270841,'Consulta dentária programada' ,'Rafael','05-04-2020');

    commit;
end;

alter table Faturas_tb  add constraint id_fatura primary key (id_fatura);



