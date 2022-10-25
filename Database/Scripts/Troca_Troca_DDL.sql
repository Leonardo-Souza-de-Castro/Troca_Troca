CREATE DATABASE TROCA_TROCA;
GO

USE TROCA_TROCA;
GO

CREATE TABLE TipoUsuario(
   idTipoUsuario INT PRIMARY KEY IDENTITY(1,1),
   tipoUsuario VARCHAR(20) NOT NULL UNIQUE
);
GO

CREATE TABLE Bairro(
   idBairro INT PRIMARY KEY IDENTITY(1,1),
   nomeBairro VARCHAR(40) NOT NULL 
);
GO

CREATE TABLE Usuario(
   idUsuario INT PRIMARY KEY IDENTITY(1,1),
   nomeUsuario VARCHAR(40) NOT NULL UNIQUE 
);
GO

CREATE TABLE Figurinhas(
   idFigurinha INT PRIMARY KEY IDENTITY(1,1),
   nomeFigurinha VARCHAR(40) NOT NULL UNIQUE,
   codigoFigurinha CHAR(5) NOT NULL UNIQUE
);
GO

CREATE TABLE Reservas(
   idReserva INT PRIMARY KEY IDENTITY(1,1),
   idUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
   idFigurinha INT FOREIGN KEY REFERENCES Figurinhas(IdFigurinha),
   statusFigurinha BIT NOT NULL DEFAULT(0)
);
GO

CREATE TABLE MinhasFigurinhas(
   idMinhaFigurinha INT PRIMARY KEY IDENTITY(1,1),
   idUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
   idFigurinhaLista INT FOREIGN KEY REFERENCES Figurinhas(IdFigurinha),
   idReserva INT FOREIGN KEY REFERENCES Reservas(IdReserva),
   nomeFigurinha VARCHAR(40) NOT NULL,
   codigoFigurinha CHAR(5) NOT NULL UNIQUE,
   statusFigurinha CHAR(1) NOT NULL DEFAULT(0)	
);
GO
