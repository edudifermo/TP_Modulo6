/* Práctica Evaluativa */
DROP DATABASE IF EXISTS TP_Modulo_6;
CREATE DATABASE TP_Modulo_6;
USE TP_Modulo_6;

/* Tabla: Usuarios */
CREATE TABLE `Usuarios` (
  `id` INT NOT NULL,
  `Nombre` VARCHAR(60) NOT NULL,
  `email` VARCHAR(60) UNIQUE NOT NULL,
  `id_usuarios_notas` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE (`id`)
  );
  
/* Tabla: Notas */
CREATE TABLE `Notas` (
  `id` INT NOT NULL,
  `titulo` VARCHAR(100) NOT NULL,
  `fechaCreacion` DATETIME,
  `fechaActualizacion` DATETIME,
  `descripcion` VARCHAR(100) NOT NULL,
  `id_notas_categorias` INTEGER NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE (`id`)
  );
  
/* Tabla Pivot para relacionar Usuarios y Notas */
 CREATE TABLE `Usuarios_Notas` (
   `id` INT NOT NULL,
   `id_usuarios` INT NOT NULL,
   `id_notas` INT NOT NULL,
   PRIMARY KEY (`id`)   
   );
   
/* Tabla: Categorias de Notas*/
CREATE TABLE `Categorias` (
  `id` INT NOT NULL,
  `nombreCategoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE (`id`)
  );
  
 /*Tabla Pivot de Notas y Categorias*/
   CREATE TABLE `Notas_Categoria` (
   `id` INT NOT NULL,
   `id_notas` INT NOT NULL,
   `id_categorias` INT NOT NULL,
   PRIMARY KEY (`id`)
   );
   
ALTER TABLE `Usuarios_Notas` ADD FOREIGN KEY (`id_usuarios`) REFERENCES `Usuarios`(`id`);
ALTER TABLE `Usuarios_Notas` ADD FOREIGN KEY (`id_notas`) REFERENCES `Notas`(`id`);
ALTER TABLE `Notas_Categoria` ADD FOREIGN KEY (`id_notas`) REFERENCES `Notas`(`id`);
ALTER TABLE `Notas_Categoria` ADD FOREIGN KEY (`id_categorias`) REFERENCES `Categorias`(`id`);


/* carga de res¿gistro de prueba */

/*tabla usuarios*/

insert into Usuarios (id, nombre, email, id_usuarios_notas) values (1, 'Agretha', 'adurber0@howstuffworks.com', 1);
insert into Usuarios (id, nombre, email, id_usuarios_notas) values (2, 'Wallace', 'wmarsden1@trellian.com', 2);
insert into Usuarios (id, nombre, email, id_usuarios_notas) values (3, 'Goldina', 'gblow2@dagondesign.com', 3);
insert into Usuarios (id, nombre, email, id_usuarios_notas) values (4, 'Gale', 'ghamill3@paypal.com', 4);
insert into Usuarios (id, nombre, email, id_usuarios_notas) values (5, 'Bald', 'bmenloe4@usgs.gov', 5);
insert into Usuarios (id, nombre, email, id_usuarios_notas) values (6, 'Devina', 'dmournian5@reference.com', 6);
insert into Usuarios (id, nombre, email, id_usuarios_notas) values (7, 'Gail', 'gharyngton6@rediff.com', 7);
insert into Usuarios (id, nombre, email, id_usuarios_notas) values (8, 'Danella', 'dchallice7@npr.org', 8);
insert into Usuarios (id, nombre, email, id_usuarios_notas) values (9, 'Monti', 'mhawtry8@cpanel.net', 9);
insert into Usuarios (id, nombre, email, id_usuarios_notas) values (10, 'Maje', 'mpipes9@xing.com', 10);  


/* tabla notaas */
insert into Notas (id, titulo, fechaCreacion, fechaActualizacion, descripcion, id_notas_categorias) values (1, 'Analyst Programmer', '8/22/2021', '4/6/2021', 'Krajcik, Yost and Hansen', 'Anas bahamensis');
insert into Notas (id, titulo, fechaCreacion, fechaActualizacion, descripcion, id_notas_categorias) values (2, 'VP Product Management', '6/14/2021', '7/9/2021', 'Ernser, Renner and Padberg', 'Didelphis virginiana');
insert into Notas (id, titulo, fechaCreacion, fechaActualizacion, descripcion, id_notas_categorias) values (3, 'Associate Professor', '2/28/2021', '6/22/2021', 'Heaney, Gaylord and Weber', 'Ictonyx striatus');
insert into Notas (id, titulo, fechaCreacion, fechaActualizacion, descripcion, id_notas_categorias) values (4, 'Structural Analysis Engineer', '7/10/2021', '3/12/2021', 'Goyette-Klein', 'Kobus leche robertsi');
insert into Notas (id, titulo, fechaCreacion, fechaActualizacion, descripcion, id_notas_categorias) values (5, 'Sales Associate', '5/11/2021', '12/15/2021', 'Gottlieb-Spencer', 'Lamprotornis nitens');
insert into Notas (id, titulo, fechaCreacion, fechaActualizacion, descripcion, id_notas_categorias) values (6, 'Chemical Engineer', '10/12/2021', '1/23/2021', 'Reinger and Sons', 'Sarcophilus harrisii');
insert into Notas (id, titulo, fechaCreacion, fechaActualizacion, descripcion, id_notas_categorias) values (7, 'General Manager', '11/24/2021', '6/7/2021', 'Bechtelar Group', 'Motacilla aguimp');
insert into Notas (id, titulo, fechaCreacion, fechaActualizacion, descripcion, id_notas_categorias) values (8, 'Nurse Practicioner', '5/7/2021', '3/6/2021', 'Lindgren-Swaniawski', 'Leprocaulinus vipera');
insert into Notas (id, titulo, fechaCreacion, fechaActualizacion, descripcion, id_notas_categorias) values (9, 'Director of Sales', '9/24/2021', '2/8/2021', 'White, Moen and Murphy', 'Ara chloroptera');
insert into Notas (id, titulo, fechaCreacion, fechaActualizacion, descripcion, id_notas_categorias) values (10, 'Assistant Manager', '6/18/2021', '2/26/2021', 'Runte-Fadel', 'unavailable'); 

/* tabla categorias */
insert into Categorias (id, nombreCategoria) values (1, 'Myrtaceae');
insert into Categorias (id, nombreCategoria) values (2, 'Asteraceae');
insert into Categorias (id, nombreCategoria) values (3, 'Onagraceae');
insert into Categorias (id, nombreCategoria) values (4, 'Polygonaceae');
insert into Categorias (id, nombreCategoria) values (5, 'Asteraceae');
insert into Categorias (id, nombreCategoria) values (6, 'Parmeliaceae');
insert into Categorias (id, nombreCategoria) values (7, 'Asclepiadaceae');
insert into Categorias (id, nombreCategoria) values (8, 'Asteraceae');
insert into Categorias (id, nombreCategoria) values (9, 'Malvaceae');
insert into Categorias (id, nombreCategoria) values (10, 'Cyperaceae');


