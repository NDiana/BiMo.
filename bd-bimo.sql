use epiz_21842634_bimo;

/* Tabla tipo de documento */

create table `tipo_documento`(
`id_tipo_documento` int(2),
`descripcion_tipo_documento` varchar(25) not null,

primary key(`id_tipo_documento`)
);

insert into 

`tipo_documento`(`id_tipo_documento`, `descripcion_tipo_documento`)

values

(1,'Cédula de ciudadania'),
(2,'Tarjeta de identidad'),
(3,'Cédula extranjera');

/* Tabla rol */

create table `rol`(
`id_rol` int(2),
`descripcion_rol` varchar(25) not null,

primary key(`id_rol`)
);

insert into 

`rol`(`id_rol`, `descripcion_rol`)

values

(1,'Administrador'),
(2,'Supervisor'),
(3,'Guarda'),
(4,'Usuario');

/* Tabla parqueadero */

create table `parqueadero`(
`id_parqueadero` int(1),
`nombre_parqueadero` varchar(255) not null,
`capacidad_parqueadero` int(3) not null,
primary key(`id_parqueadero`)
);

insert into 

`parqueadero`(`id_parqueadero`, `nombre_parqueadero`, `capacidad_parqueadero`)

values

(1,'Asignar nombre al Parqueadero',0);

/* Tabla estado */

create table `estado`(
`id_estado` int(2),
`descripcion_estado` varchar(25) not null,

primary key(`id_estado`)
);

insert into 

`estado`(`id_estado`, `descripcion_estado`)

values

(1,'Habilitado'),
(2,'Pendiente'),
(3,'Inhabilitado');

/* Tabla usuario */

create table `usuario`(
`id` int(10) not null,
`fecha_registro` date not null,
`nombre` varchar(255) not null,
`tipo_documento` int(2) not null,
`no_documento` varchar(11) not null,
`centro` varchar(255) not null,
`rol` int(2) not null,
`no_ficha` varchar(20) not null,
`fecha_inicio` varchar(15) not null,
`fecha_terminacion` varchar(15) not null,
`celular` varchar(10) not null,
`correo` varchar(255) not null,
`contrasena` varchar(255) not null,
`estado` int(2) not null,

foreign key(`tipo_documento`) references `tipo_documento`(`id_tipo_documento`),
foreign key(`rol`) references `rol`(`id_rol`),
foreign key(`estado`) references `estado`(`id_estado`)
);

insert into 

`usuario`(`id`, `fecha_registro`, `nombre`, `tipo_documento`, `no_documento`, `centro`, `rol`, `no_ficha`, `fecha_inicio`, `fecha_terminacion`, `celular`, `correo`, 
`contrasena`, `estado`)

values

(1,now(),'administrador parqueadero',1,40075255,'CEET',1,'sin definir','sin definir','sin definir',3103302525,'administrador@misena.edu.co','7367cc4cee061a476290d18978830414',1);

ALTER TABLE `usuario`
ADD PRIMARY KEY (`id`);

ALTER TABLE `usuario`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

/* Tabla tipo de vehiculo */

create table `tipo_vehiculo`(
`id_tipo_vehiculo` int(2),
`descripcion_tipo_vehiculo` varchar(10) not null,

primary key(`id_tipo_vehiculo`)
);

insert into 

`tipo_vehiculo`(`id_tipo_vehiculo`, `descripcion_tipo_vehiculo`)

values

(1,'Bicicleta'),
(2,'Moto');

/* Tabla vehiculo */

create table `vehiculo`(
`id_vehiculo` int(10) auto_increment not null,
`fecha_registro` date not null,
`tipo_vehiculo` int(2) not null,
`marca` varchar(20) not null,
`color` varchar(50) not null,
`propietario` int(10) not null,
`parqueadero` int(1) not null,
`no_identificacion_vehiculo` varchar(20) not null,

primary key(`id_vehiculo`),

foreign key(`tipo_vehiculo`) references `tipo_vehiculo`(`id_tipo_vehiculo`),
foreign key(`parqueadero`) references `parqueadero`(`id_parqueadero`),
foreign key(`propietario`) references `usuario`(`id`)
);

/* ----------------------------------------------------------------------------------------- */

ALTER TABLE `tipo_documento` DEFAULT CHARSET=utf8 COLLATE utf8_spanish_ci ROW_FORMAT = COMPACT;
ALTER TABLE `rol` DEFAULT CHARSET=utf8 COLLATE utf8_spanish_ci ROW_FORMAT = COMPACT;
ALTER TABLE `parqueadero` DEFAULT CHARSET=utf8 COLLATE utf8_spanish_ci ROW_FORMAT = COMPACT;
ALTER TABLE `estado` DEFAULT CHARSET=utf8 COLLATE utf8_spanish_ci ROW_FORMAT = COMPACT;
ALTER TABLE `usuario` DEFAULT CHARSET=utf8 COLLATE utf8_spanish_ci ROW_FORMAT = COMPACT;
ALTER TABLE `tipo_vehiculo` DEFAULT CHARSET=utf8 COLLATE utf8_spanish_ci ROW_FORMAT = COMPACT;
ALTER TABLE `vehiculo` DEFAULT CHARSET=utf8 COLLATE utf8_spanish_ci ROW_FORMAT = COMPACT;