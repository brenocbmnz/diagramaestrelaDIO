
-- Criação da Tabela FatoProfessor
CREATE TABLE FatoProfessor (
    idProfessor INT,
    idDisciplina INT,
    idCurso INT,
    idDepartamento INT,
    DataInicio DATE,
    DataFim DATE,
    QtdDisciplinasMinistradas INT,
    QtdCursosMinistrados INT,
    QtdAlunos INT,
    PRIMARY KEY (idProfessor, idDisciplina, idCurso, idDepartamento)
);

-- Criação da Tabela DimProfessor
CREATE TABLE DimProfessor (
    idProfessor INT PRIMARY KEY,
    Nome VARCHAR(255),
    Departamento VARCHAR(255),
    Coordenador BOOLEAN
);

-- Criação da Tabela DimDisciplina
CREATE TABLE DimDisciplina (
    idDisciplina INT PRIMARY KEY,
    NomeDisciplina VARCHAR(255),
    ProfessorResponsavel VARCHAR(255),
    PreRequisito VARCHAR(255)
);

-- Criação da Tabela DimCurso
CREATE TABLE DimCurso (
    idCurso INT PRIMARY KEY,
    NomeCurso VARCHAR(255),
    Departamento VARCHAR(255)
);

-- Criação da Tabela DimDepartamento
CREATE TABLE DimDepartamento (
    idDepartamento INT PRIMARY KEY,
    NomeDepartamento VARCHAR(255),
    Campus VARCHAR(255),
    Coordenador VARCHAR(255)
);

-- Criação da Tabela DimData
CREATE TABLE DimData (
    DataID INT PRIMARY KEY,
    Data DATE,
    Ano INT,
    Mes INT,
    Dia INT
);
