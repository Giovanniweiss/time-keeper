-- Table to store information about employees
CREATE TABLE Pessoas (
    ID INT PRIMARY KEY,
    Nome TEXT,
    Sobrenome TEXT,
    Departmento TEXT,
    Email TEXT
);

-- Table to store information about projects
CREATE TABLE Projetos (
    ProjetoID INT PRIMARY KEY,
    ProjetoNome TEXT,
    ProjetoDesc TEXT,
    Finalizado INT
);

-- Table to store information about tasks
CREATE TABLE Tarefas (
    TarefaID INT PRIMARY KEY,
    TarefaNome TEXT,
    ProjetoID INT,
    FOREIGN KEY (ProjetoID) REFERENCES Projetos(ProjetoID)
);

-- Table to store time entries
CREATE TABLE Apontamentos (
    ApID INT PRIMARY KEY,
    PessoaID INT,
    TarefaID INT,
    HoraInicio DATETIME,
    HoraFim DATETIME,
    HorasTrab INT,
    DataTrab DATE,
    FOREIGN KEY (PessoaID) REFERENCES Pessoas(ID),
    FOREIGN KEY (TarefaID) REFERENCES Tarefas(TarefaID)
);

-- Additional tables for tracking holidays, approvals, etc. can be added as needed.

