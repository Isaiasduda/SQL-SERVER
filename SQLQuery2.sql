insert into dbo.Alunos
(id_aluno, nome, data_nascimento, sexo, data_cadastro, login_cadastro)
Values
(2, 'Alessandro Henrique Peres Porfirio', '04/10/1989', 'M','02/11/2019 15:00:00','ALESS')

SELECT * FROM DBO.Alunos

insert into dbo.Cursos(id_curso, nome_curso, data_cadastro, login_cadastro) values
(1, 'VBA I','02/11/2019 15:00:00','ALESS')

select * from dbo.Cursos

insert into dbo.Situacao 
( id_situacao, situacao, data_cadastro, login_cadastro)
values
(1,'presenca confirmada', '02/11/2019 15:00:00','ALESS')

insert into dbo.Situacao 
( id_situacao, situacao, data_cadastro, login_cadastro)
values
(2,'ausente sem justificativa', '02/11/2019 15:00:00','ALESS')

insert into dbo.Situacao 
( id_situacao, situacao, data_cadastro, login_cadastro)
values
(3,'ausente com justificativa', '02/11/2019 15:00:00','ALESS')

select * from dbo.Situacao

-- apagando colunas desnecessarias --

alter table Turmas
drop constraint fk_TurmasAlunos;

alter table Turmas
drop column id_aluno;

alter table Turmas
drop column Valor_Turma

alter table Turmas
drop column Desconto;

-- criando uma nova tabela

create table AlunosxTurmas
(	
	id_turma int not null,
	id_aluno int not null,
	valor numeric (13,2) not null,
	valor_desconto numeric (3,2),
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null

);

alter table AlunosxTurmas
	add constraint fk_turma foreign key (id_turma) references Turmas (id_turma);

alter table AlunosxTurmas
	add constraint fk_aluno foreign key (id_aluno) references Alunos (id_aluno);

insert into turmas 
(id_turma, id_curso, data_inicio, data_termino, data_cadastro, login_cadastro)
values
(1,1,'17/11/2019','27/12/2019', getdate(),'alessandro')

insert into AlunosxTurmas 
(id_turma, id_aluno, valor, valor_desconto, data_cadastro, login_cadastro)
values
(1,1,1200,0.1, getdate(),'alessandro')

select * from Alunos