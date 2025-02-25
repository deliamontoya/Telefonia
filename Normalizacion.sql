use telefonica;
SET SQL_SAFE_UPDATES = 0;

select * from Portabilidad;
select * from Mapa_Conectividad;

select * from ventas_postales;
select * from ventas_telegraficas;
select * from ventas_monetarias;
select * from ventas_unidades_postales;
select * from ventas_unidades_telegraficas;
select * from ventas_personal_ocupado;
select * from ventas_unidades_provincia;


drop table Catalogo_ventas;
truncate table Catalogo_ventas;
create table Catalogo_ventas(
	id_catalogo int not null auto_increment,
    descripcion varchar(40),
    primary key(id_catalogo)
);
insert into Catalogo_ventas (descripcion) values ('Postales');
insert into Catalogo_ventas (descripcion) values ('Telegraficas');
insert into Catalogo_ventas (descripcion) values ('Monetarias');
insert into Catalogo_ventas (descripcion) values ('Unidades Postales');
insert into Catalogo_ventas (descripcion) values ('Unidades Telegraficas');
insert into Catalogo_ventas (descripcion) values ('Personal Ocupado');
insert into Catalogo_ventas (descripcion) values ('Unidades Provincia');

select * from Catalogo_ventas;


truncate table ventas_trimestre;
drop table ventas_trimestre;
create table ventas_trimestre  (
	id_ventas int not null auto_increment,
	Anio int,
	trimestre int,
	correo_priv_pesos double,
	id_catalogo int,
	primary key (id_ventas),
	FOREIGN KEY (id_catalogo) REFERENCES Catalogo_ventas(id_catalogo)
);

insert into ventas_trimestre (Anio, trimestre, correo_priv_pesos, id_catalogo) 
select anio, trimestre, sum(correo_of_priv_pesos), 1 as id_catalogo
from (
	select anio, mes, correo_of_priv_pesos, 
	case when mes = 'Enero' then 1
	 when mes = 'Febrero' then 1
	 when mes = 'Marzo' then 1
	 when mes = 'Abril' then 2
	 when mes = 'Mayo' then 2
	 when mes = 'Junio' then 2
	 when mes = 'Julio' then 3
	 when mes = 'Agosto' then 3
	 when mes = 'Septiembre' then 3
	 when mes = 'Octubre' then 4
	 when mes = 'Noviembre' then 4
	 when mes = 'Diciembre' then 4 
	end as trimestre
	from ventas_unidades_postales) as venta_trimestre
    group by anio, trimestre
    order by 1 asc, 2 asc, 3 asc
    ;

insert into ventas_trimestre (Anio, trimestre, correo_priv_pesos, id_catalogo) 
select anio, trimestre, sum(correo_of_priv_pesos), 2 as id_catalogo
from (
	select anio, mes, correo_of_priv_pesos, 
	case when mes = 'Enero' then 1
	 when mes = 'Febrero' then 1
	 when mes = 'Marzo' then 1
	 when mes = 'Abril' then 2
	 when mes = 'Mayo' then 2
	 when mes = 'Junio' then 2
	 when mes = 'Julio' then 3
	 when mes = 'Agosto' then 3
	 when mes = 'Septiembre' then 3
	 when mes = 'Octubre' then 4
	 when mes = 'Noviembre' then 4
	 when mes = 'Diciembre' then 4 
	end as trimestre
	from ventas_telegraficas) as venta_trimestre
    group by anio, trimestre
    order by 1 asc, 2 asc, 3 asc
    ;


insert into ventas_trimestre (Anio, trimestre, correo_priv_pesos, id_catalogo) 
select anio, trimestre, sum(correo_of_priv_pesos), 3 as id_catalogo
from (
	select anio, mes, correo_of_priv_pesos, 
	case when mes = 'Enero' then 1
	 when mes = 'Febrero' then 1
	 when mes = 'Marzo' then 1
	 when mes = 'Abril' then 2
	 when mes = 'Mayo' then 2
	 when mes = 'Junio' then 2
	 when mes = 'Julio' then 3
	 when mes = 'Agosto' then 3
	 when mes = 'Septiembre' then 3
	 when mes = 'Octubre' then 4
	 when mes = 'Noviembre' then 4
	 when mes = 'Diciembre' then 4 
	end as trimestre
	from ventas_monetarias) as venta_trimestre
    group by anio, trimestre
    order by 1 asc, 2 asc, 3 asc
    ;

insert into ventas_trimestre (Anio, trimestre, correo_priv_pesos, id_catalogo) 
select anio, trimestre, sum(correo_of_priv_pesos), 4 as id_catalogo
from (
	select anio, mes, correo_of_priv_pesos, 
	case when mes = 'Enero' then 1
	 when mes = 'Febrero' then 1
	 when mes = 'Marzo' then 1
	 when mes = 'Abril' then 2
	 when mes = 'Mayo' then 2
	 when mes = 'Junio' then 2
	 when mes = 'Julio' then 3
	 when mes = 'Agosto' then 3
	 when mes = 'Septiembre' then 3
	 when mes = 'Octubre' then 4
	 when mes = 'Noviembre' then 4
	 when mes = 'Diciembre' then 4 
	end as trimestre
	from ventas_unidades_postales) as venta_trimestre
    group by anio, trimestre
    order by 1 asc, 2 asc, 3 asc
    ;


insert into ventas_trimestre (Anio, trimestre, correo_priv_pesos, id_catalogo) 
select anio, trimestre, sum(correo_of_priv_pesos), 5 as id_catalogo
from (
	select anio, mes, correo_of_priv_pesos, 
	case when mes = 'Enero' then 1
	 when mes = 'Febrero' then 1
	 when mes = 'Marzo' then 1
	 when mes = 'Abril' then 2
	 when mes = 'Mayo' then 2
	 when mes = 'Junio' then 2
	 when mes = 'Julio' then 3
	 when mes = 'Agosto' then 3
	 when mes = 'Septiembre' then 3
	 when mes = 'Octubre' then 4
	 when mes = 'Noviembre' then 4
	 when mes = 'Diciembre' then 4 
	end as trimestre
	from ventas_unidades_telegraficas) as venta_trimestre
    group by anio, trimestre
    order by 1 asc, 2 asc, 3 asc
    ;

insert into ventas_trimestre (Anio, trimestre, correo_priv_pesos, id_catalogo) 
select anio, trimestre, sum(correo_of_priv_pesos), 6 as id_catalogo
from (
	select anio, mes, correo_of_priv_pesos, 
	case when mes = 'Enero' then 1
	 when mes = 'Febrero' then 1
	 when mes = 'Marzo' then 1
	 when mes = 'Abril' then 2
	 when mes = 'Mayo' then 2
	 when mes = 'Junio' then 2
	 when mes = 'Julio' then 3
	 when mes = 'Agosto' then 3
	 when mes = 'Septiembre' then 3
	 when mes = 'Octubre' then 4
	 when mes = 'Noviembre' then 4
	 when mes = 'Diciembre' then 4 
	end as trimestre
	from ventas_personal_ocupado) as venta_trimestre
    group by anio, trimestre
    order by 1 asc, 2 asc, 3 asc
    ;
insert into ventas_trimestre (Anio, trimestre, correo_priv_pesos, id_catalogo) 
select anio, trimestre, correo_of_priv_pesos, 7 as id_catalogo
from ventas_unidades_provincia;

select distinct id_catalogo from ventas_trimestre;

/********************************************************************************************************************************************************************************************************************/
																				/*	INTERNET	*/ 
/********************************************************************************************************************************************************************************************************************/
SET SQL_SAFE_UPDATES = 0;
/*delete from internet_Acc_vel_loc_sinrangos where accesos <= 0 or velocidad_mbps <=0;*/


select * From internet_Acc_vel_loc_sinrangos;



/*delete  from internet_vel_sin_rangos where accesos <= 0 or velocidad is null or velocidad = 0;*/

select * from internet_vel_sin_rangos
order by 1 desc
;

select * from internet_vel_sin_rangos
order by 1 desc
;

delete from accesos_tecnologia_localidad where accesos <= 0;

select * from accesos_tecnologia_localidad;

select * from velocidad_provincia
order by 1 desc;

select * from totales_vmd
order by 1 desc;


select * from totales_acceso_tecnologia
order by 1 desc;

/*delete  from Acceso_Tecnologia where cablemodem <=0 or fibra_optica <=0 or wireless <=0 or adsl <=0 or otros <=0
;*/

select *  from Acceso_Tecnologia ;

select * from penetracion_poblacion;

select * from penetracion_hogares;

select anio, trimestre, acceso_100_hogares, acceso_100_hab from penetracion_total;

select * from total_acceso_rango;

select * from acceso_rango;
select * from dial_baf;
select * from total_dial_baf;
select anio, trimestre, ingresos_miles from ingresos;

update ingresos set anio = 2023 where anio = 2033;
select tecnologia, sum(accesos) from accesos_tecnologia_localidad
group by tecnologia
order by 2 desc;

select provincia, sum(velocidad), sum(accesos) from internet_vel_sin_rangos
group by provincia
order by 2 desc;
select * from internet_Acc_vel_loc_sinrangos;
select * from internet_vel_sin_rangos;
select * from accesos_tecnologia_localidad;

select provincia, tecnologia, sum(accesos) accesos from accesos_tecnologia_localidad
where provincia in ( 'BUENOS AIRES', 'CABA', 'SAN LUIS', 'LA PAMPA')
group by provincia, tecnologia
;
select distinct provincia from accesos_tecnologia_localidad;

select * from velocidad_provincia;
select * from totales_vmd;
select anio, trimestre, adsl, cablemodem, fibra_optica, wireless, otros, total from totales_acceso_tecnologia;
select * from Acceso_Tecnologia;

update Acceso_Tecnologia set provincia = trim(provincia) ;

select * from acceso_tecnologia 
where provincia = 'La Rioja' and anio = 2024
;

select  anio, provincia, sum(adsl) sum_adsl, sum(cablemodem) sum_cable_modem from Acceso_Tecnologia
where anio > 2019
and trimestre in(1,2)
group by  anio, provincia
order by 3 desc;

select sum( from Acceso_Tecnologia;

select distinct trim(provincia) from acceso_tecnologia order by 1 asc;

select * from penetracion_poblacion;
select * from penetracion_hogares;
select * from penetracion_total;
select * from total_acceso_rango;
select * from acceso_rango;
select * from dial_baf;
select * from total_dial_baf;
select * from ingresos;

select provincia, tecnologia, sum(accesos) accesos from accesos_tecnologia_localidad 
where provincia in ( 'BUENOS AIRES', 'CABA', 'SAN LUIS', 'LA PAMPA') 
group by provincia, tecnologia;


select trim(provincia), avg(Media_Bajada_Mbps) from velocidad_provincia
where anio >2019 and trimestre in (1,2)
group by trim(provincia)
order by 2 desc;

select distinct trimestre from velocidad_provincia
where anio = 2020
;


select * from total_dial_baf
order by anio desc;

select Anio, sum(banda_ancha_fija), sum(Dial_up), sum(total) from total_dial_baf
where trimestre in (1,2)
group by anio;

select * from ingresos;
select Anio, sum(ingresos_miles) from ingresos
group by Anio
;
select provincia, avg(media_bajada_mbps) media from velocidad_provincia
group by provincia
order by 2 ;


select Anio, sum(adsl) adsl, sum(cablemodem) cablemodem, sum(fibra_optica) fibra_optica, sum(Wireless) Wireless, sum(otros) otros from totales_acceso_tecnologia
group by Anio;

select anio, trimestre, sum(total)
 from acceso_rango
group by anio, trimestre
order by 1 asc, 1 asc;

select * from acceso_rango;

select * from internet_Acc_vel_loc_sinrangos;
#group by partido;

select anio, provincia, sum(Hasta_512_kbps), sum(Entre_512_Kbps_1_Mbps), sum(Entre_1_Mbps_6_Mbps), sum(Entre_6_Mbps_10_Mbps), sum(Entre_10_Mbps_20_Mbps), sum(Entre_20_Mbps_30_Mbps), sum(Más_30_Mbps) from acceso_rango
where trimestre in (1,2) and anio > 2019
group by anio, provincia
;

/********************************************************************************************************************************************************************************************************************/
																				/*	FIJA	*/ 
/********************************************************************************************************************************************************************************************************************/


select * from Fija_prov_tipo ;
select * from fija_accesos_tot ;
select * from fija_penetracion_prov ;
select * from fija_penetracion_total ;
select * from fija_ingresos ;
select * from tv_Acceso ;
select * from tv_Ingresos ;  /*NO tiene informacion*/


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