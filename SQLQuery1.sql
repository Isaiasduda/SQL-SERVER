--turmas x alunos
ALTER TABLE Turmas
	ADD CONSTRAINT fk_TurmasAlunos FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno);

	-- TURMAS X CURSOS
ALTER TABLE Turmas
	ADD CONSTRAINT FK_TurmasCursos FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso);

ALTER TABLE Registro_Presenca
		ADD CONSTRAINT fk_RPTurmas FOREIGN KEY (id_turma) REFERENCES Turmas (id_turma);

ALTER TABLE Registro_Presenca
		ADD CONSTRAINT fk_RPAlunos FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno);

ALTER TABLE Registro_Presenca
		ADD CONSTRAINT fk_RPSituacao FOREIGN KEY (id_situacao) REFERENCES Situacao (id_situacao);