DROP DATABASE IF EXISTS minecraft;
CREATE DATABASE minecraft;
USE minecraft;

CREATE TABLE Jugador (
    id_jugador INT NOT NULL, 
    nombre VARCHAR(50) NOT NULL,
    correo_electronico VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_jugador)    
);

CREATE TABLE Tipo_Jugador (
    tipo_jugador VARCHAR(50)  NOT NULL,
    id_jugador INT NOT NULL,                     
    primary key (tipo_jugador)
);


CREATE TABLE Bloque (
    id_bloque INT NOT NULL,
    nombre VARCHAR(50),
    tipo VARCHAR(50),                 
    primary key (id_bloque)
);

CREATE TABLE Mundo (
    id_mundo INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(50) NOT NULL,   
    PRIMARY KEY (id_mundo)
);

CREATE TABLE Tipo_Mundo (
    Tipo_mundo  VARCHAR(50) NOT NULL,
    id_mundo INT NOT NULL,         
    PRIMARY KEY (tipo_mundo)
);

CREATE TABLE Evento (
    id_evento INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    fecha DATE NOT NULL,
    descripcion VARCHAR(50) NOT NULL,     
    PRIMARY KEY (id_evento)
);

CREATE TABLE Tipo_Evento (
	tipo_evento VARCHAR(50) NOT NULL,
    id_evento INT NOT NULL,        
    primary key (tipo_evento)
);

CREATE TABLE Jugador_Bloque (
    id_jugador INT NOT NULL,
    id_bloque INT NOT NULL,             
    PRIMARY KEY (id_jugador, id_bloque)
);

CREATE TABLE Jugador_Mundo (
    id_jugador INT NOT NULL,
    id_mundo INT NOT NULL,               
    PRIMARY KEY (id_jugador, id_mundo)
);

CREATE TABLE Bloque_Mundo (
    id_bloque INT NOT NULL,             
    id_mundo INT NOT NULL,
    PRIMARY KEY (id_bloque, id_mundo)
);

CREATE TABLE Jugador_Evento (
    id_jugador INT NOT NULL,               
    id_evento INT NOT NULL,
    PRIMARY KEY (id_jugador, id_evento)
);

alter table Tipo_Jugador
add constraint fk_Jugador4 foreign key (id_jugador) references Jugador (id_jugador);

alter table Tipo_Mundo
add constraint fk_Mundo3 foreign key (id_mundo) references Mundo (id_mundo);

alter table Tipo_Evento
add constraint fk_Evento2 foreign key (id_evento) references Evento (id_evento);



alter table Jugador_Bloque
add constraint fk_Jugador1 foreign key (id_jugador) references Jugador (id_jugador),
add constraint fk_Bloque1 foreign key (id_bloque) references Bloque (id_bloque);

alter table Jugador_Mundo
add constraint fk_Jugador2 foreign key (id_jugador) references Jugador (id_jugador),
add constraint fk_Mundo1 foreign key (id_mundo) references Mundo (id_mundo);

alter table Bloque_Mundo
add constraint fk_Bloque2 foreign key (id_bloque) references Bloque (id_bloque),
add constraint fk_Mundo2 foreign key (id_mundo) references Mundo (id_mundo);

alter table Jugador_Evento
add constraint fk_Jugador3 foreign key (id_jugador) references Jugador (id_jugador),
add constraint fk_Evento1 foreign key (id_evento) references Evento (id_evento);

insert into Jugador
(id_jugador, nombre, correo_electronico) values (01, "David", "davidaleman@gmail.com" );

insert into Jugador
(id_jugador, nombre, correo_electronico) values (02, "Javier", "javiergalvan@gmail.com" );

insert into Jugador
(id_jugador, nombre, correo_electronico) values (03, "Sergio", "sergiocastro@gmail.com" );

insert into Jugador
(id_jugador, nombre, correo_electronico) values (04, "Adargoma", "davidaleman@gmail.com" );

insert into Jugador
(id_jugador, nombre, correo_electronico) values (05, "Miguel Angel", "miguelangel@gmail.com" );





insert into Tipo_Jugador
(tipo_jugador, id_jugador) values ("bueno", 01);

insert into Tipo_Jugador
(tipo_jugador, id_jugador) values ("notable", 02);

insert into Tipo_Jugador
(tipo_jugador, id_jugador) values ("notable alto", 03);

insert into Tipo_Jugador
(tipo_jugador, id_jugador) values ("insuficiente", 04);

insert into Tipo_Jugador
(tipo_jugador, id_jugador) values ("suficiente", 05);




insert into Bloque
(id_bloque, nombre, tipo) values (01, "Bloque1", "Madera" );

insert into Bloque
(id_bloque, nombre, tipo) values (02, "Bloque2", "Tierra" );

insert into Bloque
(id_bloque, nombre, tipo) values (03, "Bloque3", "Diamante" );

insert into Bloque
(id_bloque, nombre, tipo) values (04, "Bloque4", "Tierra" );

insert into Bloque
(id_bloque, nombre, tipo) values (05, "Bloque5", "Oro" );






insert into Mundo
(id_mundo, nombre, descripcion) values (01, "Mundo1", "Este es el Mundo 1" );

insert into Mundo
(id_mundo, nombre, descripcion) values (02, "Mundo2", "Este es el Mundo 2" );

insert into Mundo
(id_mundo, nombre, descripcion) values (03, "Mundo3", "Este es el Mundo 3" );

insert into Mundo
(id_mundo, nombre, descripcion) values (04, "Mundo4", "Este es el Mundo 4" );

insert into Mundo
(id_mundo, nombre, descripcion) values (05, "Mundo5", "Este es el Mundo 5" );





insert into Tipo_mundo
(Tipo_mundo, id_mundo) values ("Madera", 01 );

insert into Tipo_mundo
(Tipo_mundo, id_mundo) values ("Tipo", 02 );

insert into Tipo_mundo
(Tipo_mundo, id_mundo) values ("Diamante", 03 );

insert into Tipo_mundo
(Tipo_mundo, id_mundo) values ("Tierra", 04 );

insert into Tipo_mundo
(Tipo_mundo, id_mundo) values ("Oro", 05 );






insert into Evento
(id_evento, nombre, fecha, descripcion) values (01, "Evento1", '2022-07-02', "Este es el Evento1" );

insert into Evento
(id_evento, nombre, fecha, descripcion) values (02, "Evento2", '2022-08-18', "Este es el Evento2" );

insert into Evento
(id_evento, nombre, fecha, descripcion) values (03, "Evento3", '2022-09-06', "Este es el Evento3" );

insert into Evento
(id_evento, nombre, fecha, descripcion) values (04, "Evento4", '2022-10-20', "Este es el Evento4" );

insert into Evento
(id_evento, nombre, fecha, descripcion) values (05, "Evento5", '2022-11-02', "Este es el Evento5" );





insert into Tipo_Evento
(tipo_evento, id_evento) values ("Común", 01);

insert into Tipo_Evento
(tipo_evento, id_evento) values ("Muy Común", 02);

insert into Tipo_Evento
(tipo_evento, id_evento) values ("Muy Raro", 03);

insert into Tipo_Evento
(tipo_evento, id_evento) values ("Poco Común", 04);

insert into Tipo_Evento
(tipo_evento, id_evento) values ("Raro", 01);





insert into Jugador_Bloque
(id_jugador, id_bloque) values (01, 01);

insert into Jugador_Bloque
(id_jugador, id_bloque) values (02, 02);

insert into Jugador_Bloque
(id_jugador, id_bloque) values (03, 03);

insert into Jugador_Bloque
(id_jugador, id_bloque) values (04, 04);

insert into Jugador_Bloque
(id_jugador, id_bloque) values (05, 05);





insert into Jugador_Mundo
(id_jugador, id_mundo) values (01, 01);

insert into Jugador_Mundo
(id_jugador, id_mundo) values (02, 02);

insert into Jugador_Mundo
(id_jugador, id_mundo) values (03, 03);

insert into Jugador_Mundo
(id_jugador, id_mundo) values (04, 04);

insert into Jugador_Mundo
(id_jugador, id_mundo) values (05, 05);







insert into Bloque_Mundo
(id_bloque, id_mundo) values (01, 01);

insert into Bloque_Mundo
(id_bloque, id_mundo) values (02, 02);

insert into Bloque_Mundo
(id_bloque, id_mundo) values (03, 03);

insert into Bloque_Mundo
(id_bloque, id_mundo) values (04, 04);

insert into Bloque_Mundo
(id_bloque, id_mundo) values (05, 05);






insert into Jugador_Evento
(id_jugador, id_evento) values (01, 01);

insert into Jugador_Evento
(id_jugador, id_evento) values (02, 02);

insert into Jugador_Evento
(id_jugador, id_evento) values (03, 03);

insert into Jugador_Evento
(id_jugador, id_evento) values (04, 04);

insert into Jugador_Evento
(id_jugador, id_evento) values (05, 05);
