Create database Egresado;
use Egresado;

create table Egresados(

dept_grad int(45)  ,
mun_grad int(45)  ,
origen int(45)  ,
area int(45) ,
nbc int(45) ,
niv_acad int(45) ,
niv_form int(45) ,
año_grad int(45) ,
sexo int(45) ,
fech_nac varchar(45) ,
dept_res int(45) ,
mun_res int(45) ,
ed_padre int(45) ,
ed_madre int(45) ,
nivel_padres int(45) ,
busc_job varchar(45) ,
busc_mes varchar(45) ,
trabaja int(45) ,
ingresos int(45) ,
pos_ocup int(45)  ,
act_econ int(45) ,
vinc_lab int(45) ,
nro_trab int(45) ,
mes_trab varchar(45) ,
horas varchar(45),
rela_tp varchar(45),
des_cap varchar(45),
trab_ant varchar(45),
ayu1 varchar(45),
ayu2 varchar(45),
ayu3 varchar(45),
ayu4 varchar(45),
ayu5 varchar(45),
ayu6 varchar(45),
fist_job varchar(45),
fa_1 varchar(45),
fa_2 varchar(45),
fa_3 varchar(45),
fa_4 varchar(45),
fa_5 varchar(45),
fa_6 varchar(45),
fa_7 varchar(45),
fa_8 varchar(45),
fa_9 varchar(45),
fa_10 varchar(45),
fa_11 varchar(45),
fa_12 varchar(45),
fb_1 varchar(45),
fb_2 varchar(45),
fb_3 varchar(45),
fb_4 varchar(45),
fb_5 varchar(45),
fb_6 varchar(45),
fb_7 varchar(45), 
fb_8 varchar(45),
fb_9 varchar(45),
fb_10 varchar(45),
fb_11 varchar(45),
fb_12 varchar(45),
fc_1 varchar(45),
fc_2 varchar(45),
fc_3 varchar(45),
fc_4 varchar(45),
fc_5 varchar(45),
fc_6 varchar(45),
fc_7 varchar(45),
fc_8 varchar(45),
fc_9 varchar(45),
fc_10 varchar(45),
fc_11 varchar(45),
fc_12 varchar(45),
tit_ext varchar(45),
metodol varchar(45),
nivel_ac varchar(45),
estudia varchar(45),
estu_ext varchar(45),
area_desempeno varchar(45),
campo_ocup varchar(45),
ocupacion varchar(45)
);

LOAD DATA local INFILE 'C:/DatosEgresados.txt'
INTO TABLE Egresados
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(dept_grad,mun_grad,origen,area,nbc,niv_acad,niv_form,año_grad,sexo,fech_nac   ,dept_res,mun_res,ed_padre,ed_madre,nivel_padres,busc_job,busc_mes,trabaja,ingresos,pos_ocup,act_econ,vinc_lab,nro_trab,mes_trab,horas,rela_tp,des_cap,trab_ant,ayu1,
ayu2
,ayu3,
ayu4
,ayu5,
ayu6,fist_job,fa_1,
fa_2
,fa_3
,fa_4
,fa_5
,fa_6
,fa_7,
fa_8
,fa_9,
fa_10,
fa_11,
fa_12,fb_1,
fb_2,
fb_3
,fb_4
,fb_5,
fb_6,
fb_7,
fb_8,
fb_9,
fb_10,
fb_11
,fb_12,fc_1,
fc_2,
fc_3,
fc_4
,fc_5,
fc_6,
fc_7,
fc_8,
fc_9,
fc_10,
fc_11,
fc_12,tit_ext,metodol,nivel_ac,estudia,estu_ext,area_desempeno,campo_ocup,ocupacion)
;

select * from Egresados;
CREATE TABLE `departamentoGrado` 
(
  `idDepartamento` int(2) DEFAULT NULL,
  `departamentoGrado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

select * from departamentoGrado;

LOAD DATA local INFILE 'C:/departamento.txt'
INTO TABLE departamentoGrado
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(idDepartamento,departamentoGrado);


CREATE TABLE `municipio` 
(
`idDepartamento` int(2) DEFAULT NULL,
  `Departamento` varchar(100) DEFAULT NULL,
  `idmunicipio` int(2) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

select * from municipio;

LOAD DATA local INFILE 'C:/municipio.txt'
INTO TABLE municipio
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(idDepartamento,Departamento,idmunicipio,municipio);

truncate municipio;

CREATE TABLE `carrera` 
(
  `idcarrera` int(2) DEFAULT NULL,
  `nombrecarrera` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

select * from carrera;

LOAD DATA local INFILE 'C:/carrera.txt'
INTO TABLE carrera
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(idcarrera,nombrecarrera);

CREATE TABLE `nivelFormacion` 
(
  `id` int(2) DEFAULT NULL,
  `descripcion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA local INFILE 'C:/nFormacion.txt'
INTO TABLE nivelFormacion
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,descripcion);
select * from nivelFormacion;

CREATE TABLE `nivelEstudios` 
(
  `id` int(2) DEFAULT NULL,
  `descripcion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


LOAD DATA local INFILE 'C:/nEstudios.txt'
INTO TABLE nivelEstudios
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,descripcion);
select * from nivelEstudios;

CREATE TABLE `ingresoLaboral` 
(
  `id` int(2) DEFAULT NULL,
  `ingreso` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


LOAD DATA local INFILE 'C:/ingresos.txt'
INTO TABLE ingresoLaboral
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,ingreso);
select * from ingresoLaboral;

CREATE TABLE `posicionOcupacional` 
(
  `id` int(2) DEFAULT NULL,
  `posicion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


LOAD DATA local INFILE 'C:/posicionOcupacional.txt'
INTO TABLE posicionOcupacional
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,posicion);
select * from posicionOcupacional;

CREATE TABLE `ActividadEconomica` 
(
  `id` int(2) DEFAULT NULL,
  `Actividad` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA local INFILE 'C:/ActividadEconomica.txt'
INTO TABLE ActividadEconomica
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,Actividad);
select * from ActividadEconomica;

CREATE TABLE `VinculacionLaboral` 
(
  `id` int(2) DEFAULT NULL,
  `tipoContrato` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA local INFILE 'C:/VinculacionLaboral.txt'
INTO TABLE VinculacionLaboral 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,tipoContrato);
select * from VinculacionLaboral;


CREATE TABLE `numeroTrabajadores` 
(
  `id` int(2) DEFAULT NULL,
  `nTrabajadores` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA local INFILE 'C:/numeroTrabajadores.txt'
INTO TABLE numeroTrabajadores
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,nTrabajadores);
select * from numeroTrabajadores;

CREATE TABLE `horasTrabajadas` 
(
  `id` int(2) DEFAULT NULL,
  `horas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA local INFILE 'C:/horasTrabajadas.txt'
INTO TABLE horasTrabajadas
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,horas);
select * from horasTrabajadas;

CREATE TABLE `DesarrolloCapacidad` 
(
  `id` int(2) DEFAULT NULL,
  `respuesta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA local INFILE 'C:/DesarrolloCapacidad.txt'
INTO TABLE DesarrolloCapacidad
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,respuesta);
select * from DesarrolloCapacidad;


CREATE TABLE `respuesta` 
(
  `id` int(2) DEFAULT NULL,
  `respuesta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA local INFILE 'C:/respuesta.txt'
INTO TABLE respuesta
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,respuesta);
select * from respuesta;

CREATE TABLE `relacion` 
(
  `id` int(2) DEFAULT NULL,
  `relacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA local INFILE 'C:/relacion.txt'
INTO TABLE relacion
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,relacion);
select * from relacion;

CREATE TABLE `mes` 
(
  `id` int(2) DEFAULT NULL,
  `mesesTrabajados` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA local INFILE 'C:/meses.txt'
INTO TABLE mes
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,mesesTrabajados);
select * from mes;

CREATE TABLE `metodologia` 
(
  `id` int(2) DEFAULT NULL,
  `metodologia` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA local INFILE 'C:/metodologia.txt'
INTO TABLE metodologia
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,metodologia);
select * from metodologia;


CREATE TABLE `estudiosExterior` 
(
  `id` int(2) DEFAULT NULL,
  `estudiosExterior` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA local INFILE 'C:/estudiosExterior.txt'
INTO TABLE estudiosExterior
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,estudiosExterior);
select * from estudiosExterior;

CREATE TABLE `AreaDesempeño` 
(
  `id` int(2) DEFAULT NULL,
  `area` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA local INFILE 'C:/AreaDesempeno.txt'
INTO TABLE AreaDesempeño
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,area);
select * from AreaDesempeño;

CREATE TABLE `campoOcupacional` 
(
  `id` int(4) DEFAULT NULL,
  `campo` varchar(116) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA local INFILE 'C:/campoOcupacional.txt'
INTO TABLE campoOcupacional
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,campo);
select * from campoOcupacional;
truncate campoOcupacional;

CREATE TABLE `Ocupacion` 
(
  `id` int(5) DEFAULT NULL,
  `Ocupacion` varchar(114) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA local INFILE 'C:/Ocupacion.txt'
INTO TABLE Ocupacion
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES(id,Ocupacion);
select * from Ocupacion;
truncate Ocupacion;

create table sexo (
sexo int(5) auto_increment not null, 
descripcionsexo varchar(15) not null,

primary key (sexo) 
); 

insert into sexo (descripcionsexo) values 
('Hombres'),
('Mujeres'); 

show tables;


