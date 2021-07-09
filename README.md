# <Rafael_Ferreira_1703942> Database - GestClinica

1- Descri��o do Trabalho

O principal objetivo deste projeto ser� modelar uma Base de Dados Operacional que consiga realizar a gest�o de uma cl�nica. 
Com esta base de dados conseguir fazer a gest�o da area dos trabalhadores/Doutores como a do cliente e por ultimo a parte das facturas , 
onde se poder� tamb�m fazer a consulta de todos os dados das tabelas que referi.

Os objectivos espec�cos s�o:

- Registar Clientes, Funcion�rios;
- Criar uma base de dados no Oracle;
- Cria��o de Facturas;
- Modelar o base de dados;
- Definir as ferramentas que ser�o utilizadas;
- Possibilidade de alterar qualquer tipos de dados nas tabelas;

2- Modelo ER

A figura 2.1 ,2.2 e 2.3 apresenta o modelo entidade relacionamento do sistema de gest�o de uma clinica , cada trabalhador produz a respetiva fatura do cliente e os trabalhadores regist�o
os clientes em sistema.

![Alt text](imagens/Modelo err esquema.jpg "modeloer")
Figura 2.1: Modelo ER da base de dados operacional relacionamento do funcionamento das
tabelas onde temos as tabelas Admin e Trabalhadores.

![Alt text](imagens/Modelo err esquema 2.jpg "modeloer")
Figura 2.2: Modelo ER da base de dados operacional relacionamento do funcionamento das
tabelas onde temos as tabelas Clientes e Faturas.

![Alt text](imagens/Modelo err esquema 3.jpg "modeloer")
Figura 2.3: Modelo ER da base de dados operacional relacionamento do funcionamento das
tabelas onde temos as tabelas Trabalhadores e Faturas.


2.1 - Descri��o da BD

O objectivo principal desta Base de dados ir� ser melhorar a organiza��o de uma cl�nica para que n�o haja erros na emiss�o de dados.

- Ir�o ser armazenados todos os dados colocados no sistema na respectiva base de dados caso seja guardado de forma correta;
- Registar todos os trabalhadores na respectiva �rea;
- Pesquisa de todos os trabalhadores registados;
- Registar todos os clientes na respectiva �rea;
- Pesquisa de todos os clientes registados;
- Registar todos os or�amentos/facturas de clientes;
- Pesquisa de or�amentos registados no sistema;
- Na respectiva �rea de or�amentos ter� todo a informa��o necess�ria para perceber quando foi efectuado, qual o valor do mesmo, a hora e qual o servi�o efectuado no cliente.

2.2- Entidades-tipo

2.3- Entidades-fracas

2.4- Atributos/Dimens�es

Trabalhradores: entidade respons�vel por armazenar e modificar as informa��es dos clientes registados;
Faturas: entidade respons�vel para armazenar os agendamentos/or�amentos de servi�os efetuados;

![Alt text](imagens/dimens�es1.jpg "modeloer")
Figura 3.1: Tabela de Administrator.

Clientes/Faturas: entidade respons�vel por armazenar os clientes/faturas registados ser� o trabalhador o responsavel: 
1) Registar admins - id do admin /nomeadmin/cargoadmin
2) Registar Trabalhador - id trabalhador /Nome trabalhador /Cargo trabalhador/ tele movel trabalhador / email trabalhador/ cidade trabalhador/ morada trabalhador/ codigo postal do trabalhador / salario trabalhador

![Alt text](imagens/dimens�es2.jpg "modeloer")
Figura 3.2: Tabela de Funcion�rios.

![Alt text](imagens/dimens�es3.jpg "modeloer")
Figura 3.3: Tabela de Clientes.

![Alt text](imagens/dimens�es4.jpg "modeloer")
Figura 3.4: Tabela de Faturas.

3) Registar cliente - id cliente /Nome cliente /telemovel cliente/ email cliente / morada cliente/ codigo postal cliente/ tipo de consulta cliente/ problema doen�a do cliente / medico do cliente
4) Faturas - id fatura /Nome cliente fatura /or�amento fatura/ email fatura / cidade fatura/ morada fatura/ codigo postal fatura/ tipo de consulta fatura / medico autor fatura / Data fatura

2.5- Rela��es

Nos modelos de bases de dados relacionais, a tabela � um conjunto de dados dispostos em n� mero infinito de colunas e n�mero ilimitado de linhas. 
As colunas s�o tipicamente consideradas os campos da tabela, e caracterizam os tipos de dados que dever�o constar na tabela.

![Alt text](imagens/Modelo err.jpg "modeloer")
Figura 2.4: Modelo ER da base de dados operacional relacionamento do funcionamento das
tabelas onde temos as tabelas Trabalhadores e Faturas.

2.6- Modelo L�gico

![Alt text](imagens/Modelo er rela��es.jpg "modeloer")
Figura 2.5: Modelo ER da base de dados operacional relacionamento do funcionamento das
tabelas onde temos as tabelas Trabalhadores e Faturas. 
Os objetivos do sistema de Gest�o de uma Clinica � a automatiza��o das etapas presentes neste tipos de trabalhos. 
Os objetivos espec�ficos s�o: 

1) Registar Clientes, Funcion�rios; 
2) Criar uma base de dados no Oracle ; 
3) Cria��o de Facturas; 
4) Modelar o base de dados; 
5) Definir as ferramentas que ser�o utilizadas;
6) Possibilidade de alterar qualquer tipos de dados nas tabelas.

2.7- Modelo Relacional

![Alt text](imagens/modeloerr.jpg "modeloer")

3- Exemplos de uso da Syntax dos comandos SQL (CRUD)

Permite criar , apagar e pesquisar as tabelas de Administrador , Trabalhadores, Clientes e Faturas.

![Alt text](imagens/criar1 admin.jpg "modeloer")
Figura 4.3: Tabela de Administradores.

![Alt text](imagens/criar2 trabalhador.jpg "modeloer")
Figura 4.4: Tabela de Trabalhadores.

![Alt text](imagens/criar3 cliente.jpg "modeloer")
Figura 4.5: Tabela de Clientes.

![Alt text](imagens/faturas.jpg "modeloer")
Figura 4.6: Tabela de Faturas.

3.1- Geral

Criei uma tabela de admin que ser� a do gestor/criador da mesma que poder� realizar
modifica��es , a tabela de trabalhadores para registar as informa��es , caso seja necess�rio
consultar tamb�m as informa��es acerca deles , e por ultimo ainda conseguir emitir facturas
consoante a informa��o colocada nas respectivas tabelas , foi tamb�m criada a tabela de clientes
onde posso colocar/pesquisar os dados do cliente para que seja poss�vel fazer emiss�o de uma
factura pois � necess�rio certas informa��es , e por ultimo a tabela de facturas onde fa�o
pesquisa e a emiss�o das mesmas.

3.3- MySql (Create,Read,Update,Delete)

Exemplo da tabela Administrador !

-Create

CREATE TABLE Admin_tb 
(id_admin int not null,
 nome_admin     varchar2(30),
 cargo_admin    varchar2(20)
);

-Read

Select * from Admin_tb   ;
SELECT * from Admin_tb WHERE id_admin < 5;
SELECT nome_admin FROM Admin_tb WHERE nome_admin='Rafael' ORDER BY id_admin DESC ;
SELECT nome_admin, cargo_admin from Admin_tb ;

-Update

UPDATE Admin_tb
SET id_admin ='10'
WHERE nome_admin ='Joao'
AND cargo_admin ='Controlador'
;

- Delete

DELETE FROM Admin_tb WHERE cargo_admin = 'Controlador';

- Insert

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

- Alter

alter table Admin_tb add constraint id_admin primary key (id_admin);

4- Conclus�o

O desenvolvimento e implementa��o da pesquisa na base de dados criada mostrou ser um
projeto muito interessante desde o in�cio, o que me motivou para a cria��o do mesmo. Consegui
com este projeto desenvolver novas t�cnicas nunca antes utilizadas por mim o que foi gratificante
e serviu para um grande desenvolvimento nesta linguagem. O meu projeto pode ainda n�o ter
nesta fase uma implementa��o pr�tica, n�o tendo uma estrutura exequ�vel para aplicar em
empresas. Serviu certamente para perceber a complexidade de um programa de fatura��o
de simples execu��o e perceber a quantidade de testes necess�rios para conseguir satisfazer
a necessidades basicas para chegar ao nivel de um base de dados para fatura��o. Criando
cen�rios ou at� mesmo simula��o de fun��es/metodos para que o mesmo chegue ao ponto
perfeito. Grande foco principal foi sempre construir uma base de dados simples de entendimento
e execu��o tornando-a organizada para que caso seja implementado ter rendimento e melhorar
assim a eficiencia de uma pequena empresa. Agradecer ao Professor porque sem ajuda dele n�o
seria poss�vel chegar onde cheguei com este projeto.

5- Bibliografia

[1]https://www.devmedia.com.br/tutorial-sql/2973
[2]https://www.youtube.com/watch?v=0xO1rVj6oHAabchannel = B
[3]https://www.devmedia.com.br/trabalhando-com-tabelas-no-oracle-mysql-e-sql-server/31622
[4]https://www.devmedia.com.br/sql-select-guia-para-iniciantes/29530
[5]https://www.devmedia.com.br/sql-clausula-where/37645
[6]https://www.w3schools.com/sql/sql_update.asp
[7]https://www.w3schools.com/sql/sql_create_table.asp

