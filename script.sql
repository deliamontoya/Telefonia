create database telefonica;

use telefonica;

SET SQL_SAFE_UPDATES = 0;
set global local_infile = 1;

SHOW VARIABLES LIKE 'secure_file_priv';
drop table Portabilidad;
create table Portabilidad (
	anio int,
    mes int,
    total_general float
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Portabilidad.csv' 
INTO TABLE Portabilidad 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from Portabilidad;

drop table Mapa_Conectividad;

create table Mapa_Conectividad(
Provincia varchar(30),
Partido varchar (30),
Localidad varchar(70),
Población int,
ADSL varchar(10),
Cable_Modem varchar(10),
Dial_Up varchar(10),
Fibra_Optica varchar(10),
Satelital varchar(10),
Wireless varchar(10),
Telefonia_Fija varchar(10),
3G varchar(10),
4G varchar(10),
Link varchar(30),
Latitud varchar(40),
Longitud varchar(40)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/mapa_conectividad.csv' 
INTO TABLE Mapa_Conectividad 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from Mapa_Conectividad;

drop table ventas_postales;
create table ventas_postales(
anio int,
mes varchar(10),
correo_of_priv_pesos double
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/servicios_postales_ventas_postales.csv' 
INTO TABLE ventas_postales 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from ventas_postales;

drop table ventas_telegraficas;
create table ventas_telegraficas(
anio int,
mes varchar(10),
correo_of_priv_pesos double
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/servicios_postales_ventas_telegraficas.csv' 
INTO TABLE ventas_telegraficas 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from ventas_telegraficas;

drop table ventas_monetarias;
create table ventas_monetarias(
anio int,
mes varchar(10),
correo_of_priv_pesos double
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/servicios_postales_ventas_monetarios.csv' 
INTO TABLE ventas_monetarias 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from ventas_monetarias;

drop table ventas_unidades_postales;
create table ventas_unidades_postales(
anio int,
mes varchar(10),
correo_of_priv_pesos double
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/servicios_postales_unidades_postales.csv' 
INTO TABLE ventas_unidades_postales 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from ventas_unidades_postales;


drop table ventas_unidades_telegraficas;
create table ventas_unidades_telegraficas(
anio int,
mes varchar(10),
correo_of_priv_pesos double
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/servicios_postales_unidades_telegraficas.csv' 
INTO TABLE ventas_unidades_telegraficas 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from ventas_unidades_telegraficas;



drop table ventas_personal_ocupado;
create table ventas_personal_ocupado(
anio int,
mes varchar(10),
correo_of_priv_pesos double
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/servicios_postales_unidades_telegraficas.csv' 
INTO TABLE ventas_personal_ocupado 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from ventas_personal_ocupado;


drop table ventas_unidades_provincia;
create table ventas_unidades_provincia(
anio int,
trimestre int,
provincia varchar(30),
correo_of_priv_pesos double,
correos_of_priv_unidades double
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/servicios_postales_unidades_provincia.csv' 
INTO TABLE ventas_unidades_provincia 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from ventas_unidades_provincia;

drop table internet_Acc_vel_loc_sinrangos;
create table internet_Acc_vel_loc_sinrangos(
Partido	varchar(30),
Localidad varchar(60),
link_Indec varchar(100),
Velocidad_Mbps double,
Provincia	int,
Accesos int
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_Acc_vel_loc_sinrangos.csv' 
INTO TABLE internet_Acc_vel_loc_sinrangos 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from internet_Acc_vel_loc_sinrangos;

drop table internet_vel_sin_rangos;
create table internet_vel_sin_rangos(
Anio int,
Trimestre int,
Provincia	varchar(30),
Velocidad double,
Accesos INT
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_velocidad_sinrangos.csv' 
INTO TABLE internet_vel_sin_rangos 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from internet_Acc_vel_loc_sinrangos;

drop table accesos_tecnologia_localidad;
create table accesos_tecnologia_localidad (
Provincia varchar(30),
Partido	varchar(60),
Localidad varchar(100),	
Tecnologia	varchar(20),
Link_Indec varchar(100),	
Accesos int
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_accesos_tecnologia_localidad.csv' 
INTO TABLE  accesos_tecnologia_localidad
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from accesos_tecnologia_localidad;


drop table velocidad_provincia;
create table velocidad_provincia (
Anio int,
trimestre int,
Provincia	varchar(30),
Media_Bajada_Mbps varchar(100)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_velocidad_por_prov.csv' 
INTO TABLE  velocidad_provincia
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from velocidad_provincia;

drop table totales_vmd;
create table totales_vmd (
Anio int,
trimestre int,
Media_Bajada_Mbps varchar(100),
trimestre_str	varchar(30)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_totales_vmd.csv' 
INTO TABLE  totales_vmd
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from totales_vmd;

drop table totales_acceso_tecnologia;
create table totales_acceso_tecnologia (
Anio int,
trimestre int,
ADSL double,
Cablemodem	double,
Fibra_optica double,
Wireless double,
Otros double,
Total double,
Periodo varchar(30)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_totales_acceso_tecnologia.csv' 
INTO TABLE  totales_acceso_tecnologia
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from totales_acceso_tecnologia;



drop table Acceso_Tecnologia;
create table Acceso_Tecnologia (
Anio int,
trimestre int,
Provincia	varchar(30),
ADSL double,
Cablemodem	double,
Fibra_optica double,
Wireless double,
Otros double,
Total double
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_acceso_tecnologia.csv' 
INTO TABLE  Acceso_Tecnologia
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from Acceso_Tecnologia;

drop table penetracion_poblacion;
create table penetracion_poblacion (
Anio int,
trimestre int,
Provincia	varchar(30),
acceso_100_hab float
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_penetracion_poblacion.csv' 
INTO TABLE  penetracion_poblacion
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from penetracion_poblacion;


drop table penetracion_hogares;
create table penetracion_hogares (
Anio int,
trimestre int,
Provincia	varchar(30),
acceso_100_hogares float
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_penetracion_hogares.csv' 
INTO TABLE  penetracion_hogares
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from penetracion_hogares;


drop table penetracion_total;
create table  penetracion_total(
Anio int,
trimestre int,
acceso_100_hogares float,
acceso_100_hab float,
Periodo varchar(30)
);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_penetracion_totales.csv' 
INTO TABLE  penetracion_total
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from penetracion_total;


drop table total_acceso_rango ;
create table total_acceso_rango (
Anio int,
trimestre int,
Hasta_512_kbps double,
Entre_512_Kbps_1_Mbps double,
Entre_1_Mbps_6_Mbps double,
Entre_6_Mbps_10_Mbps double,
Entre_10_Mbps_20_Mbps double,
Entre_20_Mbps_30_Mbps double,
Más_30_Mbps double,
otros double,
total double
);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_total_acceso_rango.csv' 
INTO TABLE  total_acceso_rango
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from total_acceso_rango;



drop table acceso_rango ;
create table acceso_rango (
Anio int,
trimestre int,
Provincia	varchar(30),
Hasta_512_kbps double,
Entre_512_Kbps_1_Mbps double,
Entre_1_Mbps_6_Mbps double,
Entre_6_Mbps_10_Mbps double,
Entre_10_Mbps_20_Mbps double,
Entre_20_Mbps_30_Mbps double,
Más_30_Mbps double,
otros double,
total double
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_acceso_rango.csv' 
INTO TABLE  acceso_rango
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from acceso_rango;



drop table dial_baf ;
create table dial_baf (
Anio int,
trimestre int,
Provincia	varchar(30),
banda_ancha_fija double,
Dial_up double,
total double
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_dial_baf.csv' 
INTO TABLE  dial_baf
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from dial_baf;

drop table total_dial_baf ;
create table total_dial_baf (
Anio int,
trimestre int,
banda_ancha_fija double,
Dial_up double,
total double,
Periodo varchar(30)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_total_dial_baf.csv' 
INTO TABLE  total_dial_baf
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from total_dial_baf;


drop table  ingresos;
create table ingresos (
Anio int,
trimestre int,
ingresos_miles double,
Periodo varchar(30)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Internet_ingresos.csv' 
INTO TABLE  ingresos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from ingresos;


drop table  Fija_prov_tipo;
create table Fija_prov_tipo (
Anio int,
trimestre int,
provincia varchar(30),
acceso_telefonia_fija_total double,
acceso_telefonia_fija_hogar double,
acceso_telefonia_fija_comercial double,
acceso_telefonia_fija_gobierno double,
acceso_telefonia_fija_otros double
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/fija_prov_tipo.csv' 
INTO TABLE  Fija_prov_tipo
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from Fija_prov_tipo ;


drop table fija_accesos_tot ;
create table fija_accesos_tot (
Anio int,
trimestre int,
acceso_telefonia_fija_total double,
acceso_telefonia_fija_hogar double,
acceso_telefonia_fija_comercial double,
acceso_telefonia_fija_gobierno double,
acceso_telefonia_fija_otros double,
periodo varchar(30)
);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/fija_accesos_tot.csv' 
INTO TABLE  fija_accesos_tot
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from fija_accesos_tot ;


drop table fija_penetracion_prov ;
create table fija_penetracion_prov (
Anio int,
trimestre int,
provincia varchar (30),
acceso_telefonia_fija_100_hab double,
acceso_telefonia_fija_100_hogar double
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/fija_penetracion_prov.csv' 
INTO TABLE  fija_penetracion_prov
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from fija_penetracion_prov ;

drop table fija_penetracion_total ;
create table fija_penetracion_total (
Anio int,
trimestre int,
acceso_telefonia_fija_100_hab double,
acceso_telefonia_fija_100_hogar double
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/fija_penetracion_total.csv' 
INTO TABLE  fija_penetracion_total
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from fija_penetracion_total ;


drop table  fija_ingresos;
create table fija_ingresos (
Anio int,
trimestre int,
ingresos double
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/fija_ingresos.csv' 
INTO TABLE  fija_ingresos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from fija_ingresos ;


drop table  tv_Acceso;
create table tv_Acceso (
Anio int,
trimestre int,
provincia varchar(30),
acceso_subscripcion double
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Television_acceso_tv.csv' 
INTO TABLE  tv_Acceso
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from tv_Acceso ;


drop table  tv_Ingresos;
create table tv_Ingresos  (
Anio int,
trimestre int,
ingreso_subscripcion_miles double,
ingresos_satelital double
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Television_ingresos.csv' 
INTO TABLE  tv_Ingresos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from tv_Ingresos ;


drop table tv_penetracion_prob ;
create table  tv_penetracion_prob (
Anio int,
trimestre int,
provincia varchar(30),
accesos_subscripcion_100_hab double,
accesos_subscripcion_100_hogar double
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Television_penetracion_prob_tv.csv' 
INTO TABLE  tv_penetracion_prob
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from tv_penetracion_prob ;


drop table tv_penetracion_total ;
create table  tv_penetracion_total (
Anio int,
trimestre int,
accesos_subscripcion_100_hab double,
accesos_satelital_100_hab double,
accesos_subscripcion_100_hogar double,
accesos_satelital_100_hogar double
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Television_penetracion_total-tv.csv' 
INTO TABLE  tv_penetracion_total
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from  tv_penetracion_total;



drop table  movil_sms;
create table movil_sms  (
Anio int,
trimestre int,
num_sms_salientes double,
periodo varchar(39)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Telefonia_movil_SMS.csv' 
INTO TABLE  movil_sms
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from movil_sms ;


drop table  movil_llamadas_salientes;
create table  movil_llamadas_salientes (
Anio int,
trimestre int,
llamadas_pospado_salientes_miles double,
llamadas_prepago_salientes_miles double,
total_llamadas_salientes_miles double,
periodo varchar(30)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Telefonia_movil_llamadas_salientes.csv' 
INTO TABLE  movil_llamadas_salientes
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from  ;
select * from movil_llamadas_salientes ;


drop table  movil_minutos_salientes;
create table  movil_minutos_salientes (
Anio int,
trimestre int,
minutos_pospago_saliente_miles double,
minutos_prepago_salientes_miles double,
total_minutos_salientes_miles double,
periodo varchar(30)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Telefonia_movil_minutos_salientes.csv' 
INTO TABLE  movil_minutos_salientes
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from  movil_minutos_salientes;

drop table movil_ingresos  ;
create table movil_ingresos  (
Anio int,
trimestre int,
ingresos_miles double,
periodo varchar(30)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Telefonia_movil_ingresos.csv' 
INTO TABLE  movil_ingresos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from  movil_ingresos;

drop table movil_penetracion  ;
create table movil_penetracion  (
Anio int,
trimestre int,
acceso_100_hab double,
periodo varchar(30)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Telefonia_movil_penetracion.csv' 
INTO TABLE  movil_penetracion
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from  movil_penetracion;

drop table  movil_accesos ;
create table movil_accesos  (
Anio int,
trimestre int,
total_acceso_pospago double,
total_acceso_prepago double,
total_acceso_operativo double,
periodo varchar(30)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/Telefonia_movil_accesos.csv' 
INTO TABLE  movil_accesos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from  movil_accesos;