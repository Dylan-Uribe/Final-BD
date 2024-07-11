create database Veterinariafinal 
use Veterinariafinal

DROP DATABASE Veterinariafinal

CREATE TABLE Clientes (
	IdCliente  char(8) not null,
	Apellido varchar(20) not null,
	CuentaBancaria varchar(30) not null,
	Direccion varchar(70) not null,
	TelefonoFijo varchar(15) not null,
	TelefonoCel varchar(15) not null,
	Email varchar(50) not null,
	constraint Pk_Cli PRIMARY KEY (IdCliente)
);

CREATE TABLE Personas(
	CI char(12) not null,
	Nombre varchar(80) not null,
	ApellidoP varchar(30) not null,
	ApellidoM varchar(30) not null,
	TelefonoCel varchar(15) not null,
	Direccion varchar(70) not null,
	Email varchar(50) not null,
	constraint Pk_Per PRIMARY KEY (CI)
);

CREATE TABLE PersonaCliente(
	IdCliente char(8) not null,
	CI char(12) not null,
	FechaAsociacion date not null default getdate(),
	constraint Pk_PerCli PRIMARY KEY (IdCLiente, CI),
	constraint FK_CliPer FOREIGN KEY (CI) references Personas,
	constraint FK_CliPer2 FOREIGN KEY (IdCliente) references Clientes
);


CREATE TABLE Mascota(
	IdMascota char(8) not null,
	Alias varchar(20) not null,
	Especie varchar (20) not null,
	Raza varchar(20) not null,
	Color varchar(20) not null,
	FechaNacimiento date not null,
	PesoActual char(10) not null,
	Espaciente bit,
	IdCliente  char(8) not null,
	constraint PK_Mas PRIMARY KEY (IdMascota),
	constraint FK_MasCli FOREIGN KEY (IdCliente) references Clientes
);

CREATE TABLE HistoricoPeso(
	IdMascota char(8) not null,
	FechaVisita date not null,
	Peso char(10) not null,
	constraint Pk_HistoPeso PRIMARY KEY (IdMascota, FechaVisita),
	constraint Fk_HistoPesoMas FOREIGN KEY (IdMascota) references Mascota,
);

CREATE TABLE HistoClinica(
	IdMascota char(8) not null,
	Fechaconsulta date not null,
	Sintomas varchar(50) not null,
	Diagnostico varchar(60) not null,
	Tratamiento varchar(50) not null,
	Medicación varchar(80) not null,
	MontoPagado money not null default 1,
	constraint Pk_HistoCli PRIMARY KEY (IdMascota, Fechaconsulta),
	constraint Fk_HistoCliMas FOREIGN KEY (IdMascota) references Mascota,
);

CREATE TABLE Vacunas(
	IdVacuna char(8) not null,
	NombreVacuna varchar(30) not null,
	Laboratorio  varchar (30) not null,
	EnfermedadPrev varchar(50) not null,
	constraint Pk_Vac PRIMARY KEY (IdVacuna)
);

CREATE TABLE CalenVacuna(
    IdMascota char(8) not null,
    IdVacuna char(8) not null,
	Fechaprevista date not null,
	Fechaaplicacion date not null,
	Dosis varchar(20) not null,
	constraint Pk_AplVac PRIMARY KEY (IdMascota, IdVacuna),
	constraint Fk_VacMas FOREIGN KEY (IdMascota) references Mascota,
	constraint FK_VacMas2 FOREIGN KEY (IdVacuna) references Vacunas
);

CREATE TABLE Huesped (
    IdHuesped char(8) not null, 
	IdMascota char(8) not null,
	FechaIngreso date not null,
	FechaSalida date not null,
	NecesidadesEspeciales varchar(200) not null, 
	constraint Pk_Huesped PRIMARY KEY ( IdHuesped), 
	constraint Fk_Huesped FOREIGN KEY ( IdMascota) REFERENCES Mascota 
);

CREATE TABLE Categoria (
     Idcategoria varchar(8) not null, 
	 Nombre varchar (20) not null, 
	 Descripcion varchar (100) not null, 
	 constraint Pk_Categoria PRIMARY KEY (Idcategoria), 
);

CREATE TABLE Producto (
     IdProducto varchar(8) not null, 
	 IdCategoria varchar (8) not null,
	 Nombreprod varchar (20) not null, 
	 CostoUnitario money not null, 
	 constraint Pk_Producto PRIMARY KEY (IdProducto), 
	 constraint Fk_Producto FOREIGN KEY (IdCategoria) REFERENCES Categoria 
);

CREATE TABLE Detalle  (
  IdHuesped char(8) not null,
  IdProducto varchar(8) not null, 
  Fecha date not null,
  Cantidad int not null, 
  constraint Pk_Detalle PRIMARY KEY (IdHuesped, IdProducto),
  constraint Fk_DetalleHue FOREIGN KEY (IdHuesped) REFERENCES Huesped,
  constraint Fk_DetallePro FOREIGN KEY (IdProducto) REFERENCES Producto
);