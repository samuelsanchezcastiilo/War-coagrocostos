-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2017 a las 23:28:49
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `simpca2`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `arrayCostosapp` (IN `lote` VARCHAR(100))  begin

declare total_quema_quimica varchar(100);
declare total_quema_ficica varchar(100);
declare total_preparacion_suelo varchar(100);
declare total_manejo_residuos varchar(100);
declare total_siembra_mecanizada varchar(100);
declare total_siembra_manual varchar(100);
declare total_abonadas varchar(100);
declare total_fumigas varchar(100);
declare total_despalille varchar(100);
declare total_entresaque varchar(100);
declare total_macheteada varchar(100);
declare total_pajareo varchar(100);
declare total_riego varchar(100);
declare total_corta_bultos varchar(100);
declare total_corta_granel varchar(100);
declare total_mantenimiento varchar(100);
declare valor_total_liquidacion varchar(100);
declare total_arriendo varchar(100);



set total_quema_quimica =     (select ifnull(sum(valor_total_quemaq),0)       from quema_quimica            where num_lote = lote);
set total_quema_ficica =      (select ifnull(sum(valor_total_qf),0)           from quema_fisica             where num_lote = lote);
set total_preparacion_suelo = (select ifnull(sum(valor_total_preparacions),0) from preparacion_suelo        where num_lote = lote);
set total_manejo_residuos =   (select ifnull(sum(valor_total_mrc),0)          from manejo_residuos_cosecha  where num_lote = lote);
set total_siembra_manual =    (select ifnull(sum(valor_total_sim),0)          from siembra_manual           where num_lote = lote);
set total_siembra_mecanizada =(select ifnull(sum(valor_total_smzd),0)         from siembra_mecanizada       where num_lote = lote);
set total_abonadas =          (select ifnull(sum(valor_total_abonada),0)      from abonada                  where num_lote = lote);
set total_fumigas =           (select ifnull(sum(valor_total_fumiga),0)       from fumiga                   where num_lote = lote);
set total_despalille =        (select ifnull(sum(total_mano_obra_dsp),0)      from despalille               where num_lote = lote);
set total_entresaque =        (select ifnull(sum(total_mano_obra_etsq),0)     from entresaque               where num_lote = lote);
set total_macheteada =        (select ifnull(sum(total_mano_obra_mchd),0)     from macheteada               where num_lote = lote);
set total_pajareo =           (select ifnull(sum(valor_total_pcp),0)          from pajareo_celaduria_patos  where num_lote = lote);
set total_riego =             (select ifnull(sum(valor_total_riego),0)        from riego                    where num_lote = lote);
set total_corta_granel =      (select ifnull(sum(valor_total_crg),0)          from corta_granel             where num_lote = lote);
set total_corta_bultos =      (select ifnull(sum(valor_total_crb),0)          from corta_bultos             where num_lote = lote);
set total_mantenimiento =     (select ifnull(sum(valor_total_mntlote),0)      from mantenimiento_lote       where num_lote = lote);
set total_arriendo =          (select ifnull(sum(arriendo_lote),0)            from lote                     where num_lote = lote);
set valor_total_liquidacion = 	  (select ifnull(sum(total_liquidacion),0) 		  from liquidacion              where num_lote = lote);

 
select total_quema_quimica, total_quema_ficica, total_preparacion_suelo, total_manejo_residuos, total_siembra_manual,total_siembra_mecanizada,
total_abonadas, total_fumigas,total_despalille,total_entresaque,total_macheteada,total_pajareo,total_riego,total_corta_bultos,total_corta_granel,total_mantenimiento,valor_total_liquidacion,total_arriendo;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `arrayCostosappprueba` (`lote` VARCHAR(100))  begin

declare total_quema_quimica varchar(100);
declare total_quema_ficica varchar(100);
declare total_preparacion_suelo varchar(100);
declare total_manejo_residuos varchar(100);
declare total_siembra_mecanizada varchar(100);
declare total_siembra_manual varchar(100);
declare total_abonadas varchar(100);
declare total_fumigas varchar(100);
declare total_despalille varchar(100);
declare total_entresaque varchar(100);
declare total_macheteada varchar(100);
declare total_pajareo varchar(100);



set total_quema_quimica =     (select ifnull(sum(valor_total_quemaq),0)       from quema_quimica            where num_lote = lote);
set total_quema_ficica =      (select ifnull(sum(valor_total_qf),0)           from quema_fisica             where num_lote = lote);
set total_preparacion_suelo = (select ifnull(sum(valor_total_preparacions),0) from preparacion_suelo        where num_lote = lote);
set total_manejo_residuos =   (select ifnull(sum(valor_total_mrc),0)          from manejo_residuos_cosecha  where num_lote = lote);
set total_siembra_manual =    (select ifnull(sum(valor_total_sim),0)          from siembra_manual           where num_lote = lote);
set total_siembra_mecanizada =(select ifnull(sum(valor_total_smzd),0)         from siembra_mecanizada       where num_lote = lote);
set total_abonadas =          (select ifnull(sum(valor_total_abonada),0)      from abonada                  where num_lote = lote);
set total_fumigas =           (select ifnull(sum(valor_total_fumiga),0)       from fumiga                   where num_lote = lote);
set total_despalille =        (select ifnull(sum(total_mano_obra_dsp),0)      from despalille               where num_lote = lote);
set total_entresaque =        (select ifnull(sum(total_mano_obra_etsq),0)     from entresaque               where num_lote = lote);
set total_macheteada =        (select ifnull(sum(total_mano_obra_mchd),0)     from macheteada               where num_lote = lote);
set total_pajareo =           (select ifnull(sum(valor_total_pcp),0)          from pajareo_celaduria_patos  where num_lote = lote);

select total_quema_quimica, total_quema_ficica, total_preparacion_suelo, total_manejo_residuos, total_siembra_manual,total_siembra_mecanizada,
total_abonadas, total_fumigas,total_despalille,total_entresaque,total_macheteada,total_pajareo;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `arraysmy` ()  BEGIN
    SET @arrays = ( select num_lote, sum(total1) as total from 
(   
select  num_lote,ifnull(sum(valor_total_abonada),0)    as total1  from abonada                 GROUP by num_lote  
union
select num_lote,ifnull(sum(arriendo_lote),0)           as total1 from lote                     GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_qf),0)          as total1  from quema_fisica            GROUP by num_lote
union 
select num_lote,ifnull(sum(valor_total_quemaq),0)      as total1  from quema_quimica           GROUP by num_lote
union  
select num_lote,ifnull(sum(valor_total_mrc),0)         as total1  from manejo_residuos_cosecha GROUP by num_lote 
union 
select num_lote,ifnull(sum(valor_total_preparacions),0)as total1  from preparacion_suelo       GROUP by num_lote
union 
select num_lote,ifnull(sum(valor_total_mntlote),0)     as total1  from mantenimiento_lote      GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_riego),0)       as total1  from riego                   GROUP by num_lote
union 
select num_lote,ifnull(sum(valor_total_sim),0)         as total1  from siembra_manual          GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_smzd),0)        as total1  from siembra_mecanizada      GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_pcp),0)         as total1  from pajareo_celaduria_patos GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_fumiga),0)      as total1  from fumiga                  GROUP by num_lote
union
select num_lote,ifnull(sum(total_mano_obra_dsp),0)     as total1  from despalille              GROUP by num_lote
union 
select num_lote,ifnull(sum(total_mano_obra_etsq),0)    as total1  from entresaque 			   GROUP by num_lote
union 
select num_lote,ifnull(sum(total_mano_obra_mchd),0)    as total1  from macheteada              GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_crg),0)         as total1  from corta_granel            GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_crb),0)         as total1  from corta_bultos            GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_mrc),0)         as total1  from manejo_residuos_cosecha GROUP by num_lote
 ) as resultado GROUP by num_lote  order by total asc limit 10);

    WHILE (LOCATE(',', @arrays) > 0)
    DO
        SET @value = LEFT(@arrays, LOCATE(',',@arrays) - 1);    
        SET @arrays = SUBSTRING(@arrays, LOCATE(',',@arrays) + 1);
    END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `gfcs_mano_obra` (`lote` VARCHAR(100))  begin
declare mtotal_aboonada   varchar(100);
declare mtotal_entresaque varchar(100);
declare mtotal_despalille varchar(100);
declare mtotal_macheteada varchar(100);
declare mtotal_fumiga    varchar(100);
declare mtotal_manejo_residuos varchar(100);
declare mtotal_mantenimineto varchar(100);
declare mtotal_pajareo   varchar(100);
declare mtotal_quema_fisica varchar(100);
declare mtotal_quema_quimica varchar(100);
declare mtotal_riego    varchar(100);
declare mtotal_siembras varchar(100);

set mtotal_aboonada        = (select ifnull(sum(valor_total_mano_obra_abonada),0)as total from  abonada                  where num_lote = lote);
set mtotal_entresaque      = (select ifnull(sum(total_mano_obra_etsq),0)        as total  from  entresaque               where num_lote = lote);
set mtotal_despalille      = (select ifnull(sum(total_mano_obra_dsp),0)         as total  from  despalille               where num_lote = lote);
set mtotal_macheteada      = (select ifnull(sum(total_mano_obra_mchd),0)        as total  from  macheteada               where num_lote = lote);
set mtotal_fumiga          = (select ifnull(sum(valor_total_mano_obra_fumiga),0)as total  from  fumiga                   where num_lote = lote);
set mtotal_manejo_residuos = (select ifnull(sum(valor_total_mrc),0)             as total  from  manejo_residuos_cosecha  where num_lote = lote);
set mtotal_mantenimineto   = (select ifnull(sum(valor_total_jornal_mntlote),0)  as total  from  mantenimiento_lote       where num_lote = lote);
set mtotal_pajareo         = (select ifnull(sum(valor_total_mano_obra_pcp),0)   as total  from  pajareo_celaduria_patos  where num_lote = lote);
set mtotal_quema_fisica    = (select ifnull(sum(valor_total_jornal_qf),0)       as total  from  quema_fisica             where num_lote = lote); 
set mtotal_quema_quimica   = (select ifnull(sum(valor_total_mano_obra_quemaq),0)as total  from  quema_quimica            where num_lote = lote);
set mtotal_riego           = (select ifnull(sum(total_mano_obra),0)             as total  from  riego                    where num_lote = lote);  
set mtotal_siembras        = (select ifnull(sum(total1),0) from (
select ifnull(sum(pago_total_obreros_sim),0) as total1  from siembra_manual where num_lote = lote
union
select ifnull(sum(costo_mano_obra_smzd),0)  as total1  from siembra_mecanizada where num_lote = lote) as resul );


select mtotal_aboonada, mtotal_entresaque,mtotal_despalille,mtotal_macheteada,mtotal_fumiga,mtotal_manejo_residuos,mtotal_mantenimineto,mtotal_pajareo,mtotal_quema_fisica,mtotal_quema_quimica, mtotal_riego,mtotal_siembras;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `gfcs_valor_insumos` (`lote` VARCHAR(40))  begin 
declare itotal_que_Quimica varchar(100);
declare itotal_quema_fisica varchar(100);
declare itotal_abonada varchar(100);
declare itotal_mantenimiento varchar(100);
declare itotal_fumiga varchar(100);


set itotal_que_Quimica = ( select ifnull(sum(iq.valor_total_insumos),0) as total  from quema_quimica q  join insumos_quema_quimica iq  on q.id_quemaq = iq.id_quemaq  where num_lote = lote );

set itotal_quema_fisica = (select  ifnull(sum(qf.valor_total_insumo_qf),0) as total from quema_fisica qf where num_lote = lote);

set itotal_abonada=       (select ifnull(sum(ia.valor_total_insumos),0) as total from abonada a join insumos_abonada  ia on a.id_abonada = ia.id_abonada where num_lote = lote);

set itotal_mantenimiento = (select ifnull(sum(iam.valor_total_insumos),0) as total from mantenimiento_lote ml join insumos_mantenimiento_lote iam on  ml.id_mntlote = iam.id_mntlote where num_lote = lote);

set itotal_fumiga =        (select ifnull(sum(ifm.valor_total_insumos),0)  as total  from fumiga f join insumos_fumiga ifm on  f.id_fumiga = ifm.id_fumiga where num_lote = lote) ;

select  itotal_que_Quimica, itotal_quema_fisica,itotal_abonada,itotal_mantenimiento,itotal_fumiga;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `graficas` (`lote` VARCHAR(100))  begin


declare gastos_insumos varchar(100);
declare gastos_mano_obra varchar(100);
declare gastos_otros varchar(100);
declare gastos_totales varchar(100);
declare total_quema_quimica varchar(100);
declare total_quema_ficica varchar(100);
declare total_preparacion_suelo varchar(100);
declare total_manejo_residuos varchar(100);
declare total_siembras varchar(100);
declare total_abonadas varchar(100);
declare total_fumigas varchar(100);
declare total_despalille varchar(100);
declare total_entresaque varchar(100);
declare total_macheteada varchar(100);
declare total_pajareo varchar(100);
declare total_riego varchar(100);
declare total_cortas varchar(100);
declare total_mantenimiento varchar(100);
declare lotenum varchar(100);
declare procedimiento varchar(100);


set gastos_insumos = valor_insumos(lote);
set gastos_mano_obra = suma_mano(lote);
set gastos_otros = otrosgastos(lote);
set gastos_totales = total1(lote);

set lotenum = lote;
set total_quema_quimica =     (select ifnull(sum(valor_total_quemaq),0)       from quema_quimica            where num_lote = lote);
set total_quema_ficica =      (select ifnull(sum(valor_total_qf),0)           from quema_fisica             where num_lote = lote);
set total_preparacion_suelo = (select ifnull(sum(valor_total_preparacions),0) from preparacion_suelo        where num_lote = lote);
set total_manejo_residuos =   (select ifnull(sum(valor_total_mrc),0)          from manejo_residuos_cosecha  where num_lote = lote);
set total_siembras =          (select ifnull(sum(total1),0) as total_siembras from
                              (select ifnull(sum(valor_total_sim),0) as total1 from siembra_manual where num_lote = lote
union
select ifnull(sum(valor_total_smzd),0)as total1  from siembra_mecanizada               where num_lote = lote) as total );
set total_abonadas =   (select  ifnull(sum(valor_total_abonada),0)    from abonada     where num_lote = lote);
set total_fumigas =    (select ifnull(sum(valor_total_fumiga),0)      from fumiga      where num_lote = lote);
set total_despalille = (select ifnull(sum(total_mano_obra_dsp),0)     from despalille  where num_lote = lote);
set total_entresaque = (select ifnull(sum(total_mano_obra_etsq),0)    from entresaque  where num_lote = lote);
set total_macheteada = (select ifnull(sum(total_mano_obra_mchd),0)    from macheteada  where num_lote =lote);
set total_pajareo =    (select ifnull(sum(valor_total_pcp),0)         from pajareo_celaduria_patos where num_lote = lote );
set total_riego =      (select ifnull(sum(valor_total_riego),0)       from riego       where num_lote = lote );
set total_cortas =     (select ifnull(sum(total1),0) as total_cortas  from 
					   (select ifnull(sum(valor_total_crg),0) as total1  from corta_granel where num_lote = lote
union
select ifnull(sum(valor_total_crb),0)  as total1  from corta_bultos where num_lote = lote) as total3 );
set total_mantenimiento =(select ifnull(sum(valor_total_mntlote),0)from mantenimiento_lote where num_lote =lote);
select  lotenum,gastos_insumos,gastos_mano_obra, gastos_otros, gastos_totales, total_quema_quimica, total_quema_ficica, total_preparacion_suelo, total_manejo_residuos, total_siembras,
total_abonadas, total_fumigas,total_despalille,total_entresaque,total_macheteada,total_pajareo,total_riego,total_cortas,total_mantenimiento;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_usuario` (IN `cedula2` VARCHAR(50), IN `nombre2` VARCHAR(50), IN `apellido2` VARCHAR(50), IN `correo2` VARCHAR(50), IN `contraseña2` VARCHAR(50), IN `sexo2` VARCHAR(50), IN `telefono2` VARCHAR(50), IN `direccion2` VARCHAR(50))  begin


declare  lote1     varchar(50);
declare  usuario    varchar(50);
declare  arriendo  varchar(50);
declare  hectareas  varchar(50);

 declare cursor_update cursor for 
 select lot_sistem ,id_usuario_lot ,arriendo_lot ,hectareas_lot from cd_sistem_lot  where id_usuario_lot = cedula2;
 
DECLARE CONTINUE HANDLER FOR NOT FOUND SET @fin = TRUE;

insert into usuario (cedula, nombre, apellido,   correo , contrasena, sexo, telefono, direccion, tipo )
values (cedula2,nombre2,apellido2,correo2,contraseña2,sexo2,telefono2,direccion2,'Usuario');
open cursor_update;
loop1:loop
fetch cursor_update into lote1,usuario ,arriendo,hectareas;
 IF @fin  THEN
LEAVE loop1;
END IF;
if lote1 >=1 then
insert into lote (num_lote,usuario_cedula, area_lote,arriendo_lote) values (lote1 , usuario,hectareas,arriendo);
select 'true';
else 
select 'false';
end if;
end loop loop1;
close cursor_update;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `new_cycle` (`lot` VARCHAR(100))  begin
 declare number_lot varchar(100);
 declare user_identity varchar(100);
 declare rent_lot varchar(100);
 declare area_lot varchar(100);
 declare new_lot varchar(100);
 declare ceduCliente varchar(100);
 
 declare cursor_query  cursor for 
 select num_lote,usuario_cedula ,area_lote ,arriendo_lote from lote where num_lote = lot;
 DECLARE CONTINUE HANDLER FOR NOT FOUND SET @fin = TRUE;
open cursor_query;
 loop1:loop
 fetch cursor_query into number_lot ,user_identity,area_lot,rent_lot;
 IF @fin THEN
LEAVE loop1;
END IF;
end loop loop1;
close cursor_query;
set new_lot = (SELECT concat(number_lot, ' ', date_format(curdate() ,'%Y-%m')));
if new_lot <> number_lot then
insert into lote  values (new_lot,user_identity,area_lot,rent_lot);
select 'se ejecuto correctamente';
else 
select 'no se realizo la operacion';
end if;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `prueba` (`lote` VARCHAR(100))  begin
declare costo_mcnzada varchar(100);
declare obreros varchar(100);
declare mano varchar(100);
declare otros varchar(100);
set costo_mcnzada = ( select ifnull(sum(costo_mano_obra_smzd),0) as total from siembra_mecanizada where num_lote = lote);
set obreros = (select ifnull(sum(pago_total_obreros_sim),0) as total from siembra_manual where num_lote = lote);
set mano  =(select ifnull(sum(total_mano_obra),0) as total from riego  where num_lote = lote );
set otros = otrosgastos(lote);
select costo_mcnzada, obreros, mano , otros;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usuario_cedulas` (`lote` VARCHAR(100))  BEGIN
declare cedula varchar(100);
set cedula = (select usuario_cedula from lote where num_lote = lote);
select cedula;
end$$

--
-- Funciones
--
CREATE DEFINER=`root`@`localhost` FUNCTION `asistencia` (`lote` VARCHAR(100)) RETURNS VARCHAR(100) CHARSET latin1 begin
declare hectareas varchar(100);
declare valor_asistencia varchar(100);
set hectareas = (select ifnull(sum(area_lote),0) from lote where num_lote = lote );
set valor_asistencia = hectareas * 30000;
return valor_asistencia;
end$$

CREATE DEFINER=`root`@`localhost` FUNCTION `costo_kilogramo` (`lote` VARCHAR(50)) RETURNS VARCHAR(100) CHARSET latin1 begin
declare gastos varchar(50);
declare kilos varchar(50);
declare total_kilogramo varchar(50);

set gastos = total1(lote);
set kilos = (select sum(total_peso_final) from liquidacion where num_lote = lote);
set total_kilogramo = gastos / kilos ;
return round(total_kilogramo);
end$$

CREATE DEFINER=`root`@`localhost` FUNCTION `ganancias` (`lote` VARCHAR(50)) RETURNS VARCHAR(100) CHARSET latin1 begin
declare gastosTotales varchar(50);
declare gastos varchar(50);
declare  venta varchar(50);
set gastos = total1(lote);
set venta = (select sum(valor_total_liquidacion) from liquidacion where num_lote = lote);
set gastosTotales =  venta - gastos;
if gastosTotales < 0 then
set gastosTotales = gastos - venta; 
return concat('Usted Perdió $',  gastosTotales);
else 
return concat('Usted Ganó $',  gastosTotales);
end if;

end$$

CREATE DEFINER=`root`@`localhost` FUNCTION `gastos_hectareas2` (`lote` VARCHAR(30) CHARSET utf8) RETURNS VARCHAR(50) CHARSET utf8 begin
declare total_hectareas varchar(30);
declare gastos varchar(50);
set gastos =  total1(lote);
set @hectareas = (select area_lote from lote where num_lote = lote);
set total_hectareas =  gastos / @hectareas;
return round(total_hectareas);
end$$

CREATE DEFINER=`root`@`localhost` FUNCTION `masvendidos` () RETURNS VARCHAR(250) CHARSET latin1 begin
 declare vector varchar(100);
 
 set vector = ( select num_lote, sum(total1) as total from 
(   
select  num_lote,ifnull(sum(valor_total_abonada),0)    as total1  from abonada                 GROUP by num_lote  
union
select num_lote,ifnull(sum(arriendo_lote),0)           as total1 from lote                     GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_qf),0)          as total1  from quema_fisica            GROUP by num_lote
union 
select num_lote,ifnull(sum(valor_total_quemaq),0)      as total1  from quema_quimica           GROUP by num_lote
union  
select num_lote,ifnull(sum(valor_total_mrc),0)         as total1  from manejo_residuos_cosecha GROUP by num_lote 
union 
select num_lote,ifnull(sum(valor_total_preparacions),0)as total1  from preparacion_suelo       GROUP by num_lote
union 
select num_lote,ifnull(sum(valor_total_mntlote),0)     as total1  from mantenimiento_lote      GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_riego),0)       as total1  from riego                   GROUP by num_lote
union 
select num_lote,ifnull(sum(valor_total_sim),0)         as total1  from siembra_manual          GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_smzd),0)        as total1  from siembra_mecanizada      GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_pcp),0)         as total1  from pajareo_celaduria_patos GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_fumiga),0)      as total1  from fumiga                  GROUP by num_lote
union
select num_lote,ifnull(sum(total_mano_obra_dsp),0)     as total1  from despalille              GROUP by num_lote
union 
select num_lote,ifnull(sum(total_mano_obra_etsq),0)    as total1  from entresaque 			   GROUP by num_lote
union 
select num_lote,ifnull(sum(total_mano_obra_mchd),0)    as total1  from macheteada              GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_crg),0)         as total1  from corta_granel            GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_crb),0)         as total1  from corta_bultos            GROUP by num_lote
union
select num_lote,ifnull(sum(valor_total_mrc),0)         as total1  from manejo_residuos_cosecha GROUP by num_lote
 ) as resultado GROUP by num_lote  order by total asc limit 10);
return vector;
 end$$

CREATE DEFINER=`root`@`localhost` FUNCTION `otrosgastos` (`lote` VARCHAR(100)) RETURNS VARCHAR(100) CHARSET latin1 begin
declare gastos_insumos varchar(100);
declare gastos_mano    varchar(100);
declare gastos_totales varchar(100);
declare suma_gastos   varchar(100);
declare otros_gastos  varchar(100);

set gastos_totales = total1(lote);
set gastos_insumos = valor_insumos(lote);
set gastos_mano = suma_mano(lote);
set suma_gastos = gastos_insumos + gastos_mano ; 
set  otros_gastos = gastos_totales - suma_gastos;
return otros_gastos;
end$$

CREATE DEFINER=`root`@`localhost` FUNCTION `suma_mano` (`lote` VARCHAR(100)) RETURNS VARCHAR(100) CHARSET latin1 begin
declare mtotal_aboonada   varchar(100);
declare mtotal_entresaque varchar(100);
declare mtotal_despalille varchar(100);
declare mtotal_macheteada varchar(100);
declare mtotal_fumiga    varchar(100);
declare mtotal_manejo_residuos varchar(100);
declare mtotal_mantenimineto varchar(100);
declare mtotal_pajareo   varchar(100);
declare mtotal_quema_fisica varchar(100);
declare mtotal_quema_quimica varchar(100);
declare mtotal_riego    varchar(100);
declare mtotal_siembras varchar(100);
declare total_todo varchar(100);

set mtotal_aboonada        = (select ifnull(sum(valor_total_mano_obra_abonada),0)as total from  abonada                  where num_lote = lote);
set mtotal_entresaque      = (select ifnull(sum(total_mano_obra_etsq),0)        as total  from  entresaque               where num_lote = lote);
set mtotal_despalille      = (select ifnull(sum(total_mano_obra_dsp),0)         as total  from  despalille               where num_lote = lote);
set mtotal_macheteada      = (select ifnull(sum(total_mano_obra_mchd),0)        as total  from  macheteada               where num_lote = lote);
set mtotal_fumiga          = (select ifnull(sum(valor_total_mano_obra_fumiga),0)as total  from  fumiga                   where num_lote = lote);
set mtotal_manejo_residuos = (select ifnull(sum(valor_total_mrc),0)             as total  from  manejo_residuos_cosecha  where num_lote = lote);
set mtotal_mantenimineto   = (select ifnull(sum(valor_total_jornal_mntlote),0)  as total  from  mantenimiento_lote       where num_lote = lote);
set mtotal_pajareo         = (select ifnull(sum(valor_total_mano_obra_pcp),0)   as total  from  pajareo_celaduria_patos  where num_lote = lote);
set mtotal_quema_fisica    = (select ifnull(sum(valor_total_jornal_qf),0)       as total  from  quema_fisica             where num_lote = lote); 
set mtotal_quema_quimica   = (select ifnull(sum(valor_total_mano_obra_quemaq),0)as total  from  quema_quimica            where num_lote = lote);
set mtotal_riego           = (select ifnull(sum(total_mano_obra),0)             as total  from  riego                    where num_lote = lote);  
set mtotal_siembras        = (select ifnull(sum(total1),0) from (
select ifnull(sum(pago_total_obreros_sim),0) as total1  from siembra_manual where num_lote = lote
union
select ifnull(sum(costo_mano_obra_smzd),0)  as total1  from siembra_mecanizada where num_lote = lote) as resul );

set total_todo =  mtotal_aboonada + mtotal_entresaque + mtotal_despalille + mtotal_macheteada + mtotal_fumiga + mtotal_manejo_residuos +  mtotal_mantenimineto +   mtotal_pajareo+mtotal_quema_fisica+mtotal_quema_quimica+ mtotal_riego+mtotal_siembras;

return total_todo;
end$$

CREATE DEFINER=`root`@`localhost` FUNCTION `suma_mano2` (`lote` VARCHAR(100)) RETURNS VARCHAR(100) CHARSET latin1 begin
declare total_mano varchar(100);

set total_mano = ( select sum(total) from (
select ifnull(sum(valor_total_mano_obra_abonada),0) as total from abonada where num_lote = lote
union
select ifnull(sum(total_mano_obra_etsq),0) as total  from entresaque where num_lote = lote
union
select  ifnull(sum(total_mano_obra_dsp),0) as total from despalille where num_lote = lote
union 
select ifnull(sum(total_mano_obra_mchd),0)as total  from macheteada where num_lote = lote
union
select ifnull(sum(valor_total_mano_obra_fumiga),0)as total  from fumiga where num_lote = lote
union
select ifnull(sum(valor_total_mrc),0) as total from  manejo_residuos_cosecha   where num_lote =  lote
union
select ifnull(sum(valor_total_jornal_mntlote),0) as total  from mantenimiento_lote where num_lote = lote
union
select ifnull(sum(valor_total_mano_obra_pcp),0)  as total  from  pajareo_celaduria_patos where num_lote = lote
union
select ifnull(sum(valor_total_jornal_qf),0)      as total  from quema_fisica where num_lote = lote 
union
select ifnull(sum(valor_total_mano_obra_quemaq),0)as total from quema_quimica where num_lote = lote
union
select ifnull(sum(total_mano_obra),0) as total from riego  where num_lote = lote  
union
select ifnull(sum(pago_total_obreros_sim),0) as total from siembra_manual where num_lote = lote
union
select ifnull(sum(costo_mano_obra_smzd),0) as total from siembra_mecanizada where num_lote = lote
) as toal1 );
return total_mano;
end$$

CREATE DEFINER=`root`@`localhost` FUNCTION `total1` (`lote` VARCHAR(20)) RETURNS VARCHAR(100) CHARSET latin1 begin
declare _total varchar(100);
set _total = (select  sum(total1)  from 
(   
select  ifnull(sum(valor_total_abonada),0)    as total1  from abonada     where num_lote = lote
union
select ifnull(sum(arriendo_lote),0) as total1 from lote where num_lote =  lote
union
select ifnull(sum(valor_total_qf),0)          as total1  from quema_fisica where num_lote = lote
union 
select ifnull(sum(valor_total_quemaq),0)      as total1  from quema_quimica where num_lote = lote
union  
select ifnull(sum(valor_total_mrc),0)         as total1  from manejo_residuos_cosecha where num_lote = lote
union 
select ifnull(sum(valor_total_preparacions),0)   as total1  from preparacion_suelo  where num_lote = lote
union 
select ifnull(sum(valor_total_mntlote),0)     as total1  from mantenimiento_lote where num_lote = lote
union
select ifnull(sum(valor_total_riego),0)       as total1  from riego where num_lote = lote
union 
select ifnull(sum(valor_total_sim),0)         as total1  from siembra_manual where num_lote = lote
union
select ifnull(sum(valor_total_smzd),0)        as total1  from siembra_mecanizada where num_lote = lote
union
select ifnull(sum(valor_total_pcp),0)         as total1  from pajareo_celaduria_patos where num_lote = lote
union
select ifnull(sum(valor_total_fumiga),0)      as total1  from fumiga where num_lote = lote
union
select ifnull(sum(total_mano_obra_dsp),0)     as total1  from despalille where num_lote = lote
union 
select ifnull(sum(total_mano_obra_etsq),0)    as total1  from entresaque where num_lote = lote
union 
select ifnull(sum(total_mano_obra_mchd),0)    as total1  from macheteada  where num_lote = lote
union
select ifnull(sum(valor_total_crg),0)         as total1  from corta_granel where num_lote = lote
union
select ifnull(sum(valor_total_crb),0)         as total1  from corta_bultos where num_lote = lote
union
select ifnull(sum(valor_total_mrc),0)         as total1  from manejo_residuos_cosecha where num_lote = lote 
union 
select ifnull(sum(fomento_arrocero),0)  as total from parafiscales where num_lote =  lote
union
select ifnull(sum(bolsa_retencion),0)   as total from parafiscales WHERE num_lote = lote
union 
select ifnull(asistencia_tecnica,0)     as total from parafiscales WHERE num_lote = lote 
 ) as resultado) ;
 
return _total ;
end$$

CREATE DEFINER=`root`@`localhost` FUNCTION `usuarios_cedulas` (`lot` VARCHAR(100)) RETURNS VARCHAR(100) CHARSET latin1 BEGIN
declare cedula varchar(100);
set cedula = (select usuario_cedula from lote where num_lote = lot);
return cedula;
end$$

CREATE DEFINER=`root`@`localhost` FUNCTION `valor_insumos` (`lote` VARCHAR(40)) RETURNS VARCHAR(100) CHARSET latin1 begin 
declare gastos_insumos varchar(100);
set gastos_insumos =
( select ifnull(sum(total),0) as total  from (
select sum(iq.valor_total_insumos) as total  from quema_quimica q  
join insumos_quema_quimica iq  on q.id_quemaq = iq.id_quemaq  
where num_lote = lote 
union
select  sum(qf.valor_total_insumo_qf) as total from quema_fisica qf where num_lote = lote
union 
select sum(ia.valor_total_insumos) as total from abonada a join insumos_abonada  ia on a.id_abonada = ia.id_abonada where num_lote = lote
union
select sum(iam.valor_total_insumos) as total from mantenimiento_lote ml join insumos_mantenimiento_lote iam on  ml.id_mntlote = iam.id_mntlote where num_lote = lote
union
select sum(ifm.valor_total_insumos)  as total  from fumiga f join insumos_fumiga ifm on  f.id_fumiga = ifm.id_fumiga where num_lote = lote
) as total1) ;
return gastos_insumos;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abonada`
--

CREATE TABLE `abonada` (
  `id_abonada` int(11) NOT NULL,
  `fecha_abonada` date DEFAULT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `nombre_abonada` varchar(30) DEFAULT NULL,
  `cantidad_mano_obra_abonada` int(11) DEFAULT NULL,
  `unidad_mano_obra_abonada` varchar(30) NOT NULL,
  `costo_unitario_mano_obra_abonada` varchar(30) DEFAULT NULL,
  `valor_total_mano_obra_abonada` varchar(30) DEFAULT NULL,
  `cantidad_transporte_abonada` varchar(30) DEFAULT NULL,
  `unidad_transporte_abonada` varchar(30) NOT NULL,
  `costo_transporte_abonada` varchar(30) DEFAULT NULL,
  `valor_total_transporte_abonada` varchar(30) DEFAULT NULL,
  `valor_total_abonada` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cd_sistem_lot`
--

CREATE TABLE `cd_sistem_lot` (
  `lot_sistem` varchar(30) NOT NULL,
  `id_usuario_lot` varchar(50) DEFAULT NULL,
  `arriendo_lot` varchar(50) DEFAULT NULL,
  `hectareas_lot` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corta_bultos`
--

CREATE TABLE `corta_bultos` (
  `id_crb` int(11) NOT NULL,
  `fecha_crb` date NOT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `cantidad_mq_llanta_crb` int(11) DEFAULT NULL,
  `valor_mq_llanta_crb` varchar(30) DEFAULT NULL,
  `valor_total_mq_llanta_crb` varchar(30) DEFAULT NULL,
  `cantidad_mq_oruga_crb` varchar(30) DEFAULT NULL,
  `valor_mq_oruga_crb` varchar(30) DEFAULT NULL,
  `valor_total_mq_oruga_crb` varchar(30) DEFAULT NULL,
  `cantidad_llenador_crb` varchar(30) DEFAULT NULL,
  `valor_llenador_crb` varchar(30) DEFAULT NULL,
  `valor_total_llenador_crb` varchar(30) DEFAULT NULL,
  `cantidad_tractor_crb` varchar(30) DEFAULT NULL,
  `valor_tractor_crb` varchar(30) DEFAULT NULL,
  `valor_total_tractor_crb` varchar(30) DEFAULT NULL,
  `cantidad_bulteador_crb` varchar(20) DEFAULT NULL,
  `valor_bulteador_crb` varchar(30) DEFAULT NULL,
  `valor_total_bulteador_crb` varchar(30) DEFAULT NULL,
  `cantidad_flete_crb` varchar(30) DEFAULT NULL,
  `valor_flete_crb` varchar(30) DEFAULT NULL,
  `valor_total_flete_crb` varchar(30) DEFAULT NULL,
  `valor_cabuya_nylon_crb` varchar(30) DEFAULT NULL,
  `valor_celaduria_maquina_crb` varchar(30) DEFAULT NULL,
  `valor_alimentacion_crb` varchar(30) DEFAULT NULL,
  `valor_administracion_crb` varchar(30) DEFAULT NULL,
  `valor_maquina_oruga_crb` varchar(30) NOT NULL,
  `valor_total_crb` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corta_granel`
--

CREATE TABLE `corta_granel` (
  `id_crg` int(11) NOT NULL,
  `fecha_crg` date NOT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `cantidad_mq_llanta_crg` int(11) DEFAULT NULL,
  `valor_mq_llanta_crg` varchar(30) DEFAULT NULL,
  `valor_total_mq_llanta_crg` varchar(30) DEFAULT NULL,
  `cantidad_mq_oruga_crg` int(11) DEFAULT NULL,
  `valor_mq_oruga_crg` varchar(30) DEFAULT NULL,
  `valor_total_mq_oruga_crg` varchar(30) DEFAULT NULL,
  `cantidad_flete_crg` int(11) DEFAULT NULL,
  `valor_flete_crg` varchar(30) DEFAULT NULL,
  `valor_total_flete_crg` mediumtext,
  `valor_celaduria_maquina_crg` varchar(30) DEFAULT NULL,
  `valor_alimentacion_crg` varchar(30) DEFAULT NULL,
  `valor_administracion_crg` varchar(20) DEFAULT NULL,
  `valor_maquina_oruga_crg` varchar(30) NOT NULL,
  `valor_total_crg` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `despalille`
--

CREATE TABLE `despalille` (
  `id_dsp` int(11) NOT NULL,
  `fecha_dsp` date NOT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `cantidad_mano_obra_dsp` int(11) DEFAULT NULL,
  `precio_mano_obra_dsp` varchar(30) DEFAULT NULL,
  `total_mano_obra_dsp` varchar(30) DEFAULT NULL,
  `valor_total_dsp` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entresaque`
--

CREATE TABLE `entresaque` (
  `id_etsq` int(11) NOT NULL,
  `fecha_etsq` date NOT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `cantidad_mano_obra_etsq` varchar(30) DEFAULT NULL,
  `precio_mano_obra_etsq` varchar(30) DEFAULT NULL,
  `total_mano_obra_etsq` varchar(30) DEFAULT NULL,
  `valor_total_etsq` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fumiga`
--

CREATE TABLE `fumiga` (
  `id_fumiga` int(11) NOT NULL,
  `fecha_fumiga` date DEFAULT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `nombre_fumiga_fumiga` varchar(30) DEFAULT NULL,
  `cantidad_mano_obra_fumiga` int(11) DEFAULT NULL,
  `valor_uni_mano_obra_fumiga` varchar(30) DEFAULT NULL,
  `valor_total_mano_obra_fumiga` varchar(30) DEFAULT NULL,
  `valor_total_fumiga` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos_abonada`
--

CREATE TABLE `insumos_abonada` (
  `id_insumo` bigint(20) NOT NULL,
  `id_abonada` int(11) DEFAULT NULL,
  `tipo_insumo` varchar(30) DEFAULT NULL,
  `nombre_insumo` varchar(30) DEFAULT NULL,
  `cantidad_insumo` int(11) DEFAULT NULL,
  `unidad_insumo` varchar(30) DEFAULT NULL,
  `valor_unitario_insumo` varchar(30) DEFAULT NULL,
  `valor_total_insumos` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos_fumiga`
--

CREATE TABLE `insumos_fumiga` (
  `id_insumo` bigint(20) NOT NULL,
  `id_fumiga` int(11) DEFAULT NULL,
  `tipo_insumo` varchar(30) DEFAULT NULL,
  `nombre_insumo` varchar(30) DEFAULT NULL,
  `cantidad_insumo` int(11) DEFAULT NULL,
  `unidad_insumo` varchar(30) DEFAULT NULL,
  `valor_unitario_insumo` varchar(30) DEFAULT NULL,
  `valor_total_insumos` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos_mantenimiento_lote`
--

CREATE TABLE `insumos_mantenimiento_lote` (
  `id_insumo` bigint(20) NOT NULL,
  `id_mntlote` int(11) DEFAULT NULL,
  `tipo_insumo` varchar(30) DEFAULT NULL,
  `nombre_insumo` varchar(30) DEFAULT NULL,
  `cantidad_insumo` int(11) DEFAULT NULL,
  `unidad_insumo` varchar(30) DEFAULT NULL,
  `valor_unitario_insumo` varchar(30) DEFAULT NULL,
  `valor_total_insumos` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos_quema_quimica`
--

CREATE TABLE `insumos_quema_quimica` (
  `id_insumo` bigint(20) NOT NULL,
  `id_quemaq` int(11) DEFAULT NULL,
  `tipo_insumo` varchar(30) DEFAULT NULL,
  `nombre_insumo` varchar(30) DEFAULT NULL,
  `cantidad_insumo` int(11) DEFAULT NULL,
  `unidad_insumo` varchar(30) DEFAULT NULL,
  `valor_unitario_insumo` varchar(30) DEFAULT NULL,
  `valor_total_insumos` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liquidacion`
--

CREATE TABLE `liquidacion` (
  `n_tiquete_liquidacion` varchar(30) NOT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `fecha_liquidacion` date NOT NULL,
  `peso_neto_liquidacion` varchar(30) DEFAULT NULL,
  `peso_final_liquidacion` varchar(30) DEFAULT NULL,
  `f_24_liquidacion` varchar(30) DEFAULT NULL,
  `f_4_liquidacion` varchar(30) DEFAULT NULL,
  `valor_unitario_liquidacion` varchar(30) DEFAULT NULL,
  `bultos_liquidacion` varchar(30) DEFAULT NULL,
  `kls_verdes_liquidacion` varchar(30) DEFAULT NULL,
  `valor_total_liquidacion` varchar(30) DEFAULT NULL,
  `total_liquidacion` varchar(30) DEFAULT NULL,
  `total_peso_final` varchar(30) NOT NULL,
  `total_kilos_verdes` varchar(30) NOT NULL,
  `total_valor_unitario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lote`
--

CREATE TABLE `lote` (
  `num_lote` varchar(20) NOT NULL,
  `usuario_cedula` bigint(20) DEFAULT NULL,
  `area_lote` varchar(20) DEFAULT NULL,
  `arriendo_lote` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lote`
--

INSERT INTO `lote` (`num_lote`, `usuario_cedula`, `area_lote`, `arriendo_lote`) VALUES
('156', 12345, '4', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `macheteada`
--

CREATE TABLE `macheteada` (
  `id_mchd` int(11) NOT NULL,
  `fecha_mchd` date NOT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `cantidad_mano_obra_mchd` int(11) DEFAULT NULL,
  `precio_mano_obra_mchd` varchar(30) DEFAULT NULL,
  `total_mano_obra_mchd` varchar(30) DEFAULT NULL,
  `valor_total_mchd` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manejo_residuos_cosecha`
--

CREATE TABLE `manejo_residuos_cosecha` (
  `id_mrc` int(11) NOT NULL,
  `fecha_mrc` date NOT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `tipo_manejo_mrc` varchar(30) DEFAULT NULL,
  `cantidad_hectareas_mrc` int(11) DEFAULT NULL,
  `valor_hectareas_mrc` varchar(30) DEFAULT NULL,
  `valor_total_mrc` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento_lote`
--

CREATE TABLE `mantenimiento_lote` (
  `id_mntlote` int(11) NOT NULL,
  `fecha_mntlote` date DEFAULT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `tipo_limpieza_mntlote` varchar(30) DEFAULT NULL,
  `cantidad_jornal_mntlote` int(11) DEFAULT NULL,
  `valor_jornal_mntlote` varchar(30) DEFAULT NULL,
  `valor_total_jornal_mntlote` varchar(30) DEFAULT NULL,
  `valor_total_mntlote` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombres_insumos`
--

CREATE TABLE `nombres_insumos` (
  `id_nombre` int(11) NOT NULL,
  `nombre_insumo` varchar(30) DEFAULT NULL,
  `clasificacion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nombres_insumos`
--

INSERT INTO `nombres_insumos` (`id_nombre`, `nombre_insumo`, `clasificacion`) VALUES
(1, 'AFALON X 500 GRS', 'HERBICIDAS'),
(2, 'AFFINITY X 100 CC', 'HERBICIDAS'),
(3, 'AMINA 720  X LT', 'HERBICIDAS'),
(4, 'AMINA 720 X 20 LTS', 'HERBICIDAS'),
(5, 'AMINA 720 X 4 LTS', 'HERBICIDAS'),
(6, 'ARMY X 250 CC', 'HERBICIDAS'),
(7, 'ATRANEX X KL', 'HERBICIDAS'),
(8, 'AURA X LT', 'HERBICIDAS'),
(9, 'BASAGRAN X LT', 'HERBICIDAS'),
(10, 'BELGRAN X 100 GRS', 'HERBICIDAS'),
(11, 'BISPYRIGEN X LT', 'HERBICIDAS'),
(12, 'BOLERO X 20 LTS', 'HERBICIDAS'),
(13, 'BOSS X 20 LTS', 'HERBICIDAS'),
(14, 'BRIOSO X 10 KLS', 'HERBICIDAS'),
(15, 'BRIOSO X 4 KLS', 'HERBICIDAS'),
(16, 'BUTACLOR X 20 LTS', 'HERBICIDAS'),
(17, 'BUTACLOR X 4 LTS', 'HERBICIDAS'),
(18, 'BUZZARD X LT', 'HERBICIDAS'),
(19, 'BYSPIRIBAC 400 X 250 CC', 'HERBICIDAS'),
(20, 'BYSPIRIBAC 400 X 500 CC', 'HERBICIDAS'),
(21, 'CLINCHER X LT', 'HERBICIDAS'),
(22, 'COMBO X 267 CC', 'HERBICIDAS'),
(23, 'COMMAND X 10 LTS', 'HERBICIDAS'),
(24, 'COMMAND X LT', 'HERBICIDAS'),
(25, 'CORDIAL X LT', 'HERBICIDAS'),
(26, 'CREDIT 480 X 20 LTS', 'HERBICIDAS'),
(27, 'CREDIT 480 X 4 LTS', 'HERBICIDAS'),
(28, 'CREDIT 747 X KL', 'HERBICIDAS'),
(29, 'DAKOTA X LT', 'HERBICIDAS'),
(30, 'ESTADIUM X LT', 'HERBICIDAS'),
(31, 'ESTELAR 1280 X 10 LTS', 'HERBICIDAS'),
(32, 'EUROLIGHTNING X 5 LTS', 'HERBICIDAS'),
(33, 'EUROLIGHTNING X LT', 'HERBICIDAS'),
(34, 'FACET X LT', 'HERBICIDAS'),
(35, 'GAMIT STAR X 5 LTS', 'HERBICIDAS'),
(36, 'GAMIT STAR X LT', 'HERBICIDAS'),
(37, 'GESAPRIM X KL', 'HERBICIDAS'),
(38, 'GLIFOSATO 747 X 10 KLS', 'HERBICIDAS'),
(39, 'GOAL 480 X LT', 'HERBICIDAS'),
(40, 'HELMOXONE X 20 LTS', 'HERBICIDAS'),
(41, 'INVESAMINA X LT', 'HERBICIDAS'),
(42, 'KATRINA X 100 CC', 'HERBICIDAS'),
(43, 'LEGEND 400 X 250 CC', 'HERBICIDAS'),
(44, 'LEGEND 400 X LT', 'HERBICIDAS'),
(45, 'MELETREPO X 4 LTS', 'HERBICIDAS'),
(46, 'METSULFURON X 20 GRS', 'HERBICIDAS'),
(47, 'NAVAJO X KL', 'HERBICIDAS'),
(48, 'NUFURON X 20 GRS', 'HERBICIDAS'),
(49, 'OXACLOR X 20 LTS', 'HERBICIDAS'),
(50, 'OXACLOR X 4 LTS', 'HERBICIDAS'),
(51, 'OXAFED 25 X 20 LTS', 'HERBICIDAS'),
(52, 'OXAFED 25 X 4 LTS', 'HERBICIDAS'),
(53, 'OXAFED 38 X 20 LTS', 'HERBICIDAS'),
(54, 'OXAFED 38 X 4 LTS', 'HERBICIDAS'),
(55, 'PANZER 648 X 20 LTS', 'HERBICIDAS'),
(56, 'PANZER 648 X 4 LTS', 'HERBICIDAS'),
(57, 'PANZER X 20 LTS', 'HERBICIDAS'),
(58, 'PARAQUAT X 20 LTS', 'HERBICIDAS'),
(59, 'PARAQUAT X 4 LTS', 'HERBICIDAS'),
(60, 'PARAQUAT X LT', 'HERBICIDAS'),
(61, 'PELICAN X LT', 'HERBICIDAS'),
(62, 'PROPANIL X 20 LTS', 'HERBICIDAS'),
(63, 'PROPANIL X 20 LTS PROFICOL', 'HERBICIDAS'),
(64, 'PROPANIL X 4 LTS', 'HERBICIDAS'),
(65, 'PROWL X 10 LTS', 'HERBICIDAS'),
(66, 'PROWL X LT', 'HERBICIDAS'),
(67, 'RIFIT X 20 LTS', 'HERBICIDAS'),
(68, 'RIFIT X 5 LTS', 'HERBICIDAS'),
(69, 'RONSTAR 38 X 20 LTS', 'HERBICIDAS'),
(70, 'RONSTAR 38 X 5 LTS', 'HERBICIDAS'),
(71, 'RONSTAR EVOLUTION X 20 LTS', 'HERBICIDAS'),
(72, 'RONSTAR EVOLUTION X 5 LTS', 'HERBICIDAS'),
(73, 'ROUNDUP BRIO X 10 LTS', 'HERBICIDAS'),
(74, 'SELECT X LT', 'HERBICIDAS'),
(75, 'STAM M-4 X 20 LTS', 'HERBICIDAS'),
(76, 'STAM M4 X 4 LTS', 'HERBICIDAS'),
(77, 'STAM ONE X 20 LTS', 'HERBICIDAS'),
(78, 'STAM ONE X 5 LTS', 'HERBICIDAS'),
(79, 'TORAM X 4 LTS', 'HERBICIDAS'),
(80, 'TORDON X LT', 'HERBICIDAS'),
(81, 'TOUCHDOWN X 20 LTS', 'HERBICIDAS'),
(82, 'TOUCHDOWN X 5 LT', 'HERBICIDAS'),
(83, 'TRIUMP X 500 CC', 'HERBICIDAS'),
(84, 'YOGA X LT', 'HERBICIDAS'),
(85, 'ACOIDAL X 10 KLS', 'FUNGICIDAS'),
(86, 'ACOIDAL X KL', 'FUNGICIDAS'),
(87, 'AMISTAR TOP X LT', 'FUNGICIDAS'),
(88, 'AUTHORITY X LT', 'FUNGICIDAS'),
(89, 'AZIMUT X LT', 'FUNGICIDAS'),
(90, 'AZOXYTOP X LT', 'FUNGICIDAS'),
(91, 'BANAGEN X LT', 'FUNGICIDAS'),
(92, 'BENLATE 50WP X KG', 'FUNGICIDAS'),
(93, 'BENLATE X 100 GRS', 'FUNGICIDAS'),
(94, 'BENOMYL X 100 GRS', 'FUNGICIDAS'),
(95, 'BIM 75 WP X KL', 'FUNGICIDAS'),
(96, 'CACIQUE X 4 LTS', 'FUNGICIDAS'),
(97, 'CARBENCAL X LT', 'FUNGICIDAS'),
(98, 'CYCLAZOLE X KG', 'FUNGICIDAS'),
(99, 'DIFENOFED X LT', 'FUNGICIDAS'),
(100, 'DUOFED X LT', 'FUNGICIDAS'),
(101, 'FUDIOLAN X 5 LTS', 'FUNGICIDAS'),
(102, 'HELMISTIN X LTS', 'FUNGICIDAS'),
(103, 'KASUMIN X 4 LTS', 'FUNGICIDAS'),
(104, 'KASUMIN X LT', 'FUNGICIDAS'),
(105, 'KITAZIN X 4 LTS', 'FUNGICIDAS'),
(106, 'MAGO X 4 LTS', 'FUNGICIDAS'),
(107, 'MANCOL X KG', 'FUNGICIDAS'),
(108, 'MANCOZEB X KG', 'FUNGICIDAS'),
(109, 'MANZATE X KG', 'FUNGICIDAS'),
(110, 'MONCUT X LT', 'FUNGICIDAS'),
(111, 'NATIVO X 5 LTS', 'FUNGICIDAS'),
(112, 'NATIVO X LT', 'FUNGICIDAS'),
(113, 'NUPOXYN X LT', 'FUNGICIDAS'),
(114, 'OXICLORURO DE COBRE X KG', 'FUNGICIDAS'),
(115, 'PHOSTROL X 4 LTS', 'FUNGICIDAS'),
(116, 'PHOSTROL X LT', 'FUNGICIDAS'),
(117, 'POINTER X LT', 'FUNGICIDAS'),
(118, 'POLYTHION X 20 LTS', 'FUNGICIDAS'),
(119, 'POLYTHION X 4 LTS', 'FUNGICIDAS'),
(120, 'POLYTHION X LT', 'FUNGICIDAS'),
(121, 'PRIORI ZTRA X LT', 'FUNGICIDAS'),
(122, 'PROPICONAFED X LT', 'FUNGICIDAS'),
(123, 'PROPICONAZOLE X LT', 'FUNGICIDAS'),
(124, 'RALLY X 40 GRS', 'FUNGICIDAS'),
(125, 'RECIO X 4 LTS', 'FUNGICIDAS'),
(126, 'RECIO X LT', 'FUNGICIDAS'),
(127, 'SHARFENT X 300 GRS', 'FUNGICIDAS'),
(128, 'TAMIZ X 5 LTS', 'FUNGICIDAS'),
(129, 'TAMIZ X LT', 'FUNGICIDAS'),
(130, 'TOP GUN X LT', 'FUNGICIDAS'),
(131, 'VALIDACIN X 4 LTS', 'FUNGICIDAS'),
(132, 'VALIDACIN X LT', 'FUNGICIDAS'),
(133, 'ZELLUS X 100 GRS', 'FUNGICIDAS'),
(134, 'ZELLUS X KG', 'FUNGICIDAS'),
(135, 'ABAMECTINA X LT', 'INSECTICIDAS'),
(136, 'ACTUP X 100 GRS', 'INSECTICIDAS'),
(137, 'BASSIANIL X 200 GRS', 'INSECTICIDAS'),
(138, 'BENZOMECTINA X 100 GRS', 'INSECTICIDAS'),
(139, 'BENZOMECTINA X 500 GRS', 'INSECTICIDAS'),
(140, 'BINGO X 200 GRS', 'INSECTICIDAS'),
(141, 'BINGO X KG', 'INSECTICIDAS'),
(142, 'BURIL X 100 GRS', 'INSECTICIDAS'),
(143, 'CLORPYRIFOS X LT', 'INSECTICIDAS'),
(144, 'COSMO-OIL X LT', 'INSECTICIDAS'),
(145, 'DANADIM X LT', 'INSECTICIDAS'),
(146, 'DANTOTSU X 100 GRS', 'INSECTICIDAS'),
(147, 'DIMETOX X LT', 'INSECTICIDAS'),
(148, 'EMMAMECTIN BENZOATE X 500 GRS', 'INSECTICIDAS'),
(149, 'EXALT 60 X 100 CC', 'INSECTICIDAS'),
(150, 'FOSFAMINA X 333 TABLETAS', 'INSECTICIDAS'),
(151, 'IMIDOGEN X 100 CC', 'INSECTICIDAS'),
(152, 'IMIDOGEN X LT', 'INSECTICIDAS'),
(153, 'KAISO X 20 GRS', 'INSECTICIDAS'),
(154, 'K-OBIOL X 5 LTS', 'INSECTICIDAS'),
(155, 'KOMPRESOR X 125 CC', 'INSECTICIDAS'),
(156, 'KOMPRESOR X 250 CC', 'INSECTICIDAS'),
(157, 'KOMPRESOR X LT', 'INSECTICIDAS'),
(158, 'LANZETA X LT', 'INSECTICIDAS'),
(159, 'LATIGO X LT', 'INSECTICIDAS'),
(160, 'LORSBAN X KG', 'INSECTICIDAS'),
(161, 'NILO X 250 CC', 'INSECTICIDAS'),
(162, 'NILO X LT', 'INSECTICIDAS'),
(163, 'NUFOS X LT', 'INSECTICIDAS'),
(164, 'NUMETRIN X LT', 'INSECTICIDAS'),
(165, 'NUTAR X 100 GRS', 'INSECTICIDAS'),
(166, 'PERSEO X 250 CC', 'INSECTICIDAS'),
(167, 'PROAXIS X 250 CC', 'INSECTICIDAS'),
(168, 'PROAXIS X LT', 'INSECTICIDAS'),
(169, 'PROCLAIM X 100 GRS', 'INSECTICIDAS'),
(170, 'PROCLAIM X 500 GRS', 'INSECTICIDAS'),
(171, 'PROFENOCRON X LT', 'INSECTICIDAS'),
(172, 'PROTEUS X 200 CC', 'INSECTICIDAS'),
(173, 'PROTEUS X LT', 'INSECTICIDAS'),
(174, 'REFERI X 250 CC', 'INSECTICIDAS'),
(175, 'RIFLE X LT', 'INSECTICIDAS'),
(176, 'ROXION X LT', 'INSECTICIDAS'),
(177, 'THIAMETHOXAM TOP X LT', 'INSECTICIDAS'),
(178, 'THIAMETHOXAN TOP X 250 CC', 'INSECTICIDAS'),
(179, 'VERTIMEC X LT', 'INSECTICIDAS'),
(180, 'VOLIAM FLEXI X 250 CC', 'INSECTICIDAS'),
(181, 'VOLIAM FLEXI X LT', 'INSECTICIDAS'),
(182, 'ACIDUREZ X KL', 'COAYUDANTES'),
(183, 'AGROTIN X 5 LTS', 'COAYUDANTES'),
(184, 'AGROTIN X LT', 'COAYUDANTES'),
(185, 'ARPON X 60 CC', 'COAYUDANTES'),
(186, 'CARRIER X 4 LTS', 'COAYUDANTES'),
(187, 'CARRIER X LT', 'COAYUDANTES'),
(188, 'COSMO AGUAS X 250 GRS', 'COAYUDANTES'),
(189, 'COSMO AGUAS X KG', 'COAYUDANTES'),
(190, 'COSMO IND X LT', 'COAYUDANTES'),
(191, 'FREEWAY X LT', 'COAYUDANTES'),
(192, 'KAYTAR X LT', 'COAYUDANTES'),
(193, 'MIXEL X 4 LTS', 'COAYUDANTES'),
(194, 'MIXEL X LT', 'COAYUDANTES'),
(195, 'OPTIWATER X LT', 'COAYUDANTES'),
(196, 'PEGAL PH LT', 'COAYUDANTES'),
(197, 'PEGAL PH X 4 LTS', 'COAYUDANTES'),
(198, 'SILWET X 100 CC', 'COAYUDANTES'),
(199, 'SURFARE X LT', 'COAYUDANTES'),
(200, 'ABONO D.A.P X 50 KLS', 'FERTILIZANTES'),
(201, 'ABONO KCL X 50 KLS', 'FERTILIZANTES'),
(202, 'ABONO ORGANICO A GRANEL', 'FERTILIZANTES'),
(203, 'ABONO SAM GRANULADO X 50 KG', 'FERTILIZANTES'),
(204, 'ABONO SAM SIMPLE X 50 KG', 'FERTILIZANTES'),
(205, 'ABOTAIN X 50 KL', 'FERTILIZANTES'),
(206, 'ABOTEK X 50 KG', 'FERTILIZANTES'),
(207, 'ADITIVO A', 'FERTILIZANTES'),
(208, 'ADITIVO B', 'FERTILIZANTES'),
(209, 'AGRIMINS X 46 KG', 'FERTILIZANTES'),
(210, 'BOROZINCO X 20 KLS', 'FERTILIZANTES'),
(211, 'CAL DOLOMITA A GRANEL', 'FERTILIZANTES'),
(212, 'COAGROMAG GRANULADO', 'FERTILIZANTES'),
(213, 'COAGROMAG RF X 50 KLS', 'FERTILIZANTES'),
(214, 'CUBOZINC X 20 KG', 'FERTILIZANTES'),
(215, 'FERTIARROZ X 50 KLS', 'FERTILIZANTES'),
(216, 'FERTICH X 25 KG', 'FERTILIZANTES'),
(217, 'GALLINAZA X KL', 'FERTILIZANTES'),
(218, 'KIESEMAG X 50 KG', 'FERTILIZANTES'),
(219, 'KORN KALI BORO X 50 KG', 'FERTILIZANTES'),
(220, 'KORN KALI X 50 KGS', 'FERTILIZANTES'),
(221, 'MACZIBOR X 20 KG', 'FERTILIZANTES'),
(222, 'MAGNESIANA 57-33 X 50 KLS', 'FERTILIZANTES'),
(223, 'MAP X 50 KG', 'FERTILIZANTES'),
(224, 'MEZCLA 24-0-17 ETAPA 3 X 50 KG', 'FERTILIZANTES'),
(225, 'MICROMAGNESIO X 20 KG', 'FERTILIZANTES'),
(226, 'MICROMAN X 20 KG', 'FERTILIZANTES'),
(227, 'MICROSEM X 46 KG', 'FERTILIZANTES'),
(228, 'MICROZINC X 20 KG', 'FERTILIZANTES'),
(229, 'NITROXTEND X 50 KG', 'FERTILIZANTES'),
(230, 'PREMEZCLA PARA FERTIMAG', 'FERTILIZANTES'),
(231, 'PREMEZCLA PARA ROCAFOS', 'FERTILIZANTES'),
(232, 'PRODUSEM X KILO', 'FERTILIZANTES'),
(233, 'RAFOS X 50 KL', 'FERTILIZANTES'),
(234, 'ROBUSTO PH X 50 KG', 'FERTILIZANTES'),
(235, 'ROCA FOSFORICA A GRANEL', 'FERTILIZANTES'),
(236, 'ROCA FOSFORICA MOLIDA', 'FERTILIZANTES'),
(237, 'SUMAG-P X 50 KLS', 'FERTILIZANTES'),
(238, 'UREA GRANULADA X 50 KLS', 'FERTILIZANTES'),
(239, 'VOLCAN S90 X 20 KG', 'FERTILIZANTES'),
(240, 'YARALIVA NITRABOR X 50 KG', 'FERTILIZANTES'),
(241, 'YARAVERA AMIDAS X 50 KG', 'FERTILIZANTES'),
(242, 'YESO SUPER ESCAYOLA', 'FERTILIZANTES'),
(243, 'AGRISPON X LT', 'BIOESTIMULANTES'),
(244, 'AGROSTIM X LT', 'BIOESTIMULANTES'),
(245, 'BACTOX X 500 GRS', 'BIOESTIMULANTES'),
(246, 'BIOFERT MEX X 4 LTS', 'BIOESTIMULANTES'),
(247, 'BIOMEX X 100 CC', 'BIOESTIMULANTES'),
(248, 'CREZINC X LT', 'BIOESTIMULANTES'),
(249, 'CUMBRE X 100 GRS', 'BIOESTIMULANTES'),
(250, 'CZ BIOFIX X 500 GRS', 'BIOESTIMULANTES'),
(251, 'EKOZINC X 4 LTS', 'BIOESTIMULANTES'),
(252, 'EKOZINC X LT', 'BIOESTIMULANTES'),
(253, 'GIBGRO X 10 GRS', 'BIOESTIMULANTES'),
(254, 'GLOBAFOL X 5 LTS', 'BIOESTIMULANTES'),
(255, 'GLOBAFOL X LT', 'BIOESTIMULANTES'),
(256, 'GO UP X 4 LTS', 'BIOESTIMULANTES'),
(257, 'GO UP X LT', 'BIOESTIMULANTES'),
(258, 'HORMONAGRO ANA X 250 CC', 'BIOESTIMULANTES'),
(259, 'HORMONAGRO ANA X LT', 'BIOESTIMULANTES'),
(260, 'HORMONAGRO N 1 X KG', 'BIOESTIMULANTES'),
(261, 'INTRO SL X LT', 'BIOESTIMULANTES'),
(262, 'ISABION X LT', 'BIOESTIMULANTES'),
(263, 'KELPAK X LT', 'BIOESTIMULANTES'),
(264, 'KLIP K CALCIO BORO X 4 LTS', 'BIOESTIMULANTES'),
(265, 'KLIP K CALCIO BORO X LT', 'BIOESTIMULANTES'),
(266, 'METAGEN X 200 GRS', 'BIOESTIMULANTES'),
(267, 'OXOLINA X LT', 'BIOESTIMULANTES'),
(268, 'PERMIT STAR X LT', 'BIOESTIMULANTES'),
(269, 'PRODUXAL X LT', 'BIOESTIMULANTES'),
(270, 'STIMPLEX X LT', 'BIOESTIMULANTES'),
(271, 'TIMOREX GOLD X LT', 'BIOESTIMULANTES'),
(272, 'TRICHOGEN X 200 GRS', 'BIOESTIMULANTES'),
(273, 'TRICHOX X 200 GRS', 'BIOESTIMULANTES'),
(274, 'WUXAL TAPA NEGRA X LT', 'BIOESTIMULANTES'),
(275, 'WUXAL TAPA ROJA X LT', 'BIOESTIMULANTES'),
(276, 'prueba insumo', 'HERBICIDAS'),
(277, 'Insumo nuevo', 'HERBICIDAS'),
(278, 'E1', 'INSECTICIDAS'),
(279, 'E2', 'HERBICIDAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pajareo_celaduria_patos`
--

CREATE TABLE `pajareo_celaduria_patos` (
  `id_pcp` int(11) NOT NULL,
  `fecha_pcp` date NOT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `cantidad_mano_obra_pcp` int(10) DEFAULT NULL,
  `valor_mano_obra_pcp` varchar(30) DEFAULT NULL,
  `valor_total_mano_obra_pcp` varchar(30) DEFAULT NULL,
  `cantidad_polvora_pcp` int(10) DEFAULT NULL,
  `valor_polvora_pcp` varchar(20) DEFAULT NULL,
  `valor_total_polvora_pcp` varchar(30) DEFAULT NULL,
  `valor_total_pcp` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parafiscales`
--

CREATE TABLE `parafiscales` (
  `id_parafiscales` int(11) NOT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `fomento_arrocero` varchar(30) DEFAULT NULL,
  `bolsa_retencion` varchar(30) DEFAULT NULL,
  `asistencia_tecnica` varchar(30) DEFAULT NULL,
  `intereses` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preparacion_suelo`
--

CREATE TABLE `preparacion_suelo` (
  `id_preparacions` int(11) NOT NULL,
  `fecha_preparacions` date NOT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `tipo_preparacions` varchar(30) DEFAULT NULL,
  `cantidad_hect_horas_preparacions` int(11) DEFAULT NULL,
  `pases_preparacions` int(11) DEFAULT NULL,
  `valor_unitario_preparacions` varchar(30) DEFAULT NULL,
  `valor_total_preparacions` varchar(30) DEFAULT NULL,
  `total_preparacions` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quema_fisica`
--

CREATE TABLE `quema_fisica` (
  `id_qf` int(11) NOT NULL,
  `fecha_qf` date NOT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `cantidad_jornales_qf` int(10) DEFAULT NULL,
  `valor_unidad_jornal_qf` varchar(30) DEFAULT NULL,
  `valor_total_jornal_qf` varchar(30) DEFAULT NULL,
  `cantidad_insumos_qf` int(10) DEFAULT NULL,
  `unidad_insumo_qf` varchar(30) DEFAULT NULL,
  `valor_unitario_insumo_qf` varchar(20) DEFAULT NULL,
  `valor_total_insumo_qf` varchar(30) DEFAULT NULL,
  `valor_total_qf` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quema_quimica`
--

CREATE TABLE `quema_quimica` (
  `id_quemaq` int(11) NOT NULL,
  `fecha_quemaq` date DEFAULT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `cantidad_mano_obra_quemaq` int(11) DEFAULT NULL,
  `valor_mano_obra_quemaq` varchar(30) DEFAULT NULL,
  `valor_total_mano_obra_quemaq` varchar(30) DEFAULT NULL,
  `valor_total_quemaq` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `riego`
--

CREATE TABLE `riego` (
  `id_riego` int(11) NOT NULL,
  `fecha_riego` date NOT NULL,
  `tipo_riego` varchar(20) DEFAULT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `cantidad_mano_obra_riego` int(11) DEFAULT NULL,
  `valor_mano_obra_riego` varchar(30) DEFAULT NULL,
  `total_mano_obra` varchar(30) DEFAULT NULL,
  `cantidad_aceite` int(11) DEFAULT NULL,
  `valor_aceite` varchar(30) DEFAULT NULL,
  `total_aceite` varchar(30) DEFAULT NULL,
  `cantidad_combustible` int(11) DEFAULT NULL,
  `valor_combustible` varchar(30) DEFAULT NULL,
  `total_combustible_riego` varchar(30) DEFAULT NULL,
  `cantidad_alquiler_riego` int(11) DEFAULT NULL,
  `valor_alquiler_riego` varchar(30) DEFAULT NULL,
  `total_alquiler_riego` varchar(30) DEFAULT NULL,
  `valor_tarifa_districto_riego` varchar(30) DEFAULT NULL,
  `valor_tarifa_corponor_riego` varchar(30) DEFAULT NULL,
  `total_tarifa_riego` varchar(30) DEFAULT NULL,
  `valor_total_riego` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siembra_manual`
--

CREATE TABLE `siembra_manual` (
  `id_sim` int(11) NOT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `fecha_sim` date NOT NULL,
  `variedad_semilla_sim` varchar(30) DEFAULT NULL,
  `cantidad_bultos_sim` varchar(30) DEFAULT NULL,
  `precio_bulto_sim` varchar(30) DEFAULT NULL,
  `costo_semilla_sim` varchar(30) DEFAULT NULL,
  `costo_transporte_sim` varchar(30) DEFAULT NULL,
  `costo_secado_semilla_sim` varchar(30) DEFAULT NULL,
  `pago_total_obreros_sim` varchar(30) DEFAULT NULL,
  `valor_total_sim` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siembra_mecanizada`
--

CREATE TABLE `siembra_mecanizada` (
  `id_smzd` int(11) NOT NULL,
  `fecha_smzd` date NOT NULL,
  `num_lote` varchar(20) DEFAULT NULL,
  `variedad_semilla_smzd` varchar(30) DEFAULT NULL,
  `costo_mq_sembradora_smzd` varchar(30) DEFAULT NULL,
  `costo_semilla_smzd` varchar(30) DEFAULT NULL,
  `secado_semilla_smzd` varchar(30) DEFAULT NULL,
  `num_hect_sembradas_smzd` int(10) DEFAULT NULL,
  `costo_mano_obra_smzd` varchar(30) DEFAULT NULL,
  `cantidad_bultos_smzd` varchar(20) DEFAULT NULL,
  `valor_bulto_smzd` varchar(20) DEFAULT NULL,
  `transporte_semilla_smzd` varchar(30) NOT NULL,
  `valor_total_smzd` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_insumos`
--

CREATE TABLE `tipos_insumos` (
  `id_insumo` int(11) NOT NULL,
  `tipo_insumo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipos_insumos`
--

INSERT INTO `tipos_insumos` (`id_insumo`, `tipo_insumo`) VALUES
(1, 'Herbicidas'),
(2, 'Fungicidas'),
(3, 'Insecticidas'),
(4, 'Coayudantes'),
(5, 'Fertilizantes'),
(6, 'Bioestimulantes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `cedula` bigint(20) NOT NULL,
  `nombre` varchar(35) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `contrasena` varchar(20) DEFAULT NULL,
  `clave` varchar(5) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `tipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`cedula`, `nombre`, `apellido`, `contrasena`, `clave`, `sexo`, `telefono`, `correo`, `direccion`, `tipo`) VALUES
(1020, 'LUIS ', 'CASA', '123', NULL, 'Masculino', '1020', 'david.2818@outlook.com', 'AS1020', 'Administrador'),
(12345, 'nelly', 'rondon contreras', '12345', NULL, 'Femenino', '3208771333', 'nelly@gmail.com', 'zonal', 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_sistema`
--

CREATE TABLE `usuario_sistema` (
  `id_usuario` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abonada`
--
ALTER TABLE `abonada`
  ADD PRIMARY KEY (`id_abonada`),
  ADD KEY `num_lote_fk_abonada` (`num_lote`);

--
-- Indices de la tabla `cd_sistem_lot`
--
ALTER TABLE `cd_sistem_lot`
  ADD PRIMARY KEY (`lot_sistem`),
  ADD KEY `id_usuario_lot_fk` (`id_usuario_lot`);

--
-- Indices de la tabla `corta_bultos`
--
ALTER TABLE `corta_bultos`
  ADD PRIMARY KEY (`id_crb`,`fecha_crb`),
  ADD KEY `num_lote_fk_crb` (`num_lote`);

--
-- Indices de la tabla `corta_granel`
--
ALTER TABLE `corta_granel`
  ADD PRIMARY KEY (`id_crg`,`fecha_crg`),
  ADD KEY `num_lote_fk_crg` (`num_lote`);

--
-- Indices de la tabla `despalille`
--
ALTER TABLE `despalille`
  ADD PRIMARY KEY (`id_dsp`,`fecha_dsp`),
  ADD KEY `num_lote_fk_d` (`num_lote`);

--
-- Indices de la tabla `entresaque`
--
ALTER TABLE `entresaque`
  ADD PRIMARY KEY (`id_etsq`,`fecha_etsq`),
  ADD KEY `num_lote_fk_e` (`num_lote`);

--
-- Indices de la tabla `fumiga`
--
ALTER TABLE `fumiga`
  ADD PRIMARY KEY (`id_fumiga`),
  ADD KEY `num_lote_fk_fumiga` (`num_lote`);

--
-- Indices de la tabla `insumos_abonada`
--
ALTER TABLE `insumos_abonada`
  ADD PRIMARY KEY (`id_insumo`),
  ADD KEY `id_abonada_in` (`id_abonada`);

--
-- Indices de la tabla `insumos_fumiga`
--
ALTER TABLE `insumos_fumiga`
  ADD PRIMARY KEY (`id_insumo`),
  ADD KEY `id_fumiga_in` (`id_fumiga`);

--
-- Indices de la tabla `insumos_mantenimiento_lote`
--
ALTER TABLE `insumos_mantenimiento_lote`
  ADD PRIMARY KEY (`id_insumo`),
  ADD KEY `id_mtnlote` (`id_mntlote`);

--
-- Indices de la tabla `insumos_quema_quimica`
--
ALTER TABLE `insumos_quema_quimica`
  ADD PRIMARY KEY (`id_insumo`),
  ADD KEY `id_quemaq_fk` (`id_quemaq`);

--
-- Indices de la tabla `liquidacion`
--
ALTER TABLE `liquidacion`
  ADD PRIMARY KEY (`n_tiquete_liquidacion`),
  ADD KEY `num_lote_fk_lqd` (`num_lote`);

--
-- Indices de la tabla `lote`
--
ALTER TABLE `lote`
  ADD PRIMARY KEY (`num_lote`),
  ADD KEY `usuario_cedula_fk` (`usuario_cedula`);

--
-- Indices de la tabla `macheteada`
--
ALTER TABLE `macheteada`
  ADD PRIMARY KEY (`id_mchd`,`fecha_mchd`),
  ADD KEY `num_lote_fk_m` (`num_lote`);

--
-- Indices de la tabla `manejo_residuos_cosecha`
--
ALTER TABLE `manejo_residuos_cosecha`
  ADD PRIMARY KEY (`id_mrc`,`fecha_mrc`),
  ADD KEY `num_lote_fk_mrc` (`num_lote`);

--
-- Indices de la tabla `mantenimiento_lote`
--
ALTER TABLE `mantenimiento_lote`
  ADD PRIMARY KEY (`id_mntlote`),
  ADD KEY `num_lote_fk_ml` (`num_lote`);

--
-- Indices de la tabla `nombres_insumos`
--
ALTER TABLE `nombres_insumos`
  ADD PRIMARY KEY (`id_nombre`);

--
-- Indices de la tabla `pajareo_celaduria_patos`
--
ALTER TABLE `pajareo_celaduria_patos`
  ADD PRIMARY KEY (`id_pcp`,`fecha_pcp`),
  ADD KEY `num_lote_fk_p` (`num_lote`);

--
-- Indices de la tabla `parafiscales`
--
ALTER TABLE `parafiscales`
  ADD PRIMARY KEY (`id_parafiscales`),
  ADD KEY `num_lote_fk_pf` (`num_lote`);

--
-- Indices de la tabla `preparacion_suelo`
--
ALTER TABLE `preparacion_suelo`
  ADD PRIMARY KEY (`id_preparacions`,`fecha_preparacions`),
  ADD KEY `num_lote_fk_preparacions` (`num_lote`);

--
-- Indices de la tabla `quema_fisica`
--
ALTER TABLE `quema_fisica`
  ADD PRIMARY KEY (`id_qf`,`fecha_qf`),
  ADD KEY `num_lote_fk_q` (`num_lote`);

--
-- Indices de la tabla `quema_quimica`
--
ALTER TABLE `quema_quimica`
  ADD PRIMARY KEY (`id_quemaq`),
  ADD KEY `num_lote_fk_qq` (`num_lote`);

--
-- Indices de la tabla `riego`
--
ALTER TABLE `riego`
  ADD PRIMARY KEY (`id_riego`,`fecha_riego`),
  ADD KEY `num_lote_fk_rb` (`num_lote`);

--
-- Indices de la tabla `siembra_manual`
--
ALTER TABLE `siembra_manual`
  ADD PRIMARY KEY (`id_sim`,`fecha_sim`),
  ADD KEY `num_lote_fk_sim` (`num_lote`);

--
-- Indices de la tabla `siembra_mecanizada`
--
ALTER TABLE `siembra_mecanizada`
  ADD PRIMARY KEY (`id_smzd`,`fecha_smzd`),
  ADD KEY `num_lote_fk_smzd` (`num_lote`);

--
-- Indices de la tabla `tipos_insumos`
--
ALTER TABLE `tipos_insumos`
  ADD PRIMARY KEY (`id_insumo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cedula`),
  ADD UNIQUE KEY `correo_uq` (`correo`);

--
-- Indices de la tabla `usuario_sistema`
--
ALTER TABLE `usuario_sistema`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `abonada`
--
ALTER TABLE `abonada`
  MODIFY `id_abonada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `corta_bultos`
--
ALTER TABLE `corta_bultos`
  MODIFY `id_crb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `corta_granel`
--
ALTER TABLE `corta_granel`
  MODIFY `id_crg` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `despalille`
--
ALTER TABLE `despalille`
  MODIFY `id_dsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `entresaque`
--
ALTER TABLE `entresaque`
  MODIFY `id_etsq` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `fumiga`
--
ALTER TABLE `fumiga`
  MODIFY `id_fumiga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `insumos_abonada`
--
ALTER TABLE `insumos_abonada`
  MODIFY `id_insumo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `insumos_fumiga`
--
ALTER TABLE `insumos_fumiga`
  MODIFY `id_insumo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `insumos_mantenimiento_lote`
--
ALTER TABLE `insumos_mantenimiento_lote`
  MODIFY `id_insumo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `insumos_quema_quimica`
--
ALTER TABLE `insumos_quema_quimica`
  MODIFY `id_insumo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `macheteada`
--
ALTER TABLE `macheteada`
  MODIFY `id_mchd` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `manejo_residuos_cosecha`
--
ALTER TABLE `manejo_residuos_cosecha`
  MODIFY `id_mrc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `mantenimiento_lote`
--
ALTER TABLE `mantenimiento_lote`
  MODIFY `id_mntlote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `nombres_insumos`
--
ALTER TABLE `nombres_insumos`
  MODIFY `id_nombre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;
--
-- AUTO_INCREMENT de la tabla `pajareo_celaduria_patos`
--
ALTER TABLE `pajareo_celaduria_patos`
  MODIFY `id_pcp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `parafiscales`
--
ALTER TABLE `parafiscales`
  MODIFY `id_parafiscales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `preparacion_suelo`
--
ALTER TABLE `preparacion_suelo`
  MODIFY `id_preparacions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `quema_fisica`
--
ALTER TABLE `quema_fisica`
  MODIFY `id_qf` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `quema_quimica`
--
ALTER TABLE `quema_quimica`
  MODIFY `id_quemaq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `riego`
--
ALTER TABLE `riego`
  MODIFY `id_riego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `siembra_manual`
--
ALTER TABLE `siembra_manual`
  MODIFY `id_sim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `siembra_mecanizada`
--
ALTER TABLE `siembra_mecanizada`
  MODIFY `id_smzd` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipos_insumos`
--
ALTER TABLE `tipos_insumos`
  MODIFY `id_insumo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `abonada`
--
ALTER TABLE `abonada`
  ADD CONSTRAINT `num_lote_fk_abonada` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cd_sistem_lot`
--
ALTER TABLE `cd_sistem_lot`
  ADD CONSTRAINT `id_usuario_lot_fk` FOREIGN KEY (`id_usuario_lot`) REFERENCES `usuario_sistema` (`id_usuario`);

--
-- Filtros para la tabla `corta_bultos`
--
ALTER TABLE `corta_bultos`
  ADD CONSTRAINT `num_lote_fk_crb` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `corta_granel`
--
ALTER TABLE `corta_granel`
  ADD CONSTRAINT `num_lote_fk_crg` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `despalille`
--
ALTER TABLE `despalille`
  ADD CONSTRAINT `num_lote_fk_d` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `entresaque`
--
ALTER TABLE `entresaque`
  ADD CONSTRAINT `num_lote_fk_e` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fumiga`
--
ALTER TABLE `fumiga`
  ADD CONSTRAINT `num_lote_fk_fumiga` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `insumos_abonada`
--
ALTER TABLE `insumos_abonada`
  ADD CONSTRAINT `id_abonada_in` FOREIGN KEY (`id_abonada`) REFERENCES `abonada` (`id_abonada`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `insumos_fumiga`
--
ALTER TABLE `insumos_fumiga`
  ADD CONSTRAINT `id_fumiga_in` FOREIGN KEY (`id_fumiga`) REFERENCES `fumiga` (`id_fumiga`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `insumos_mantenimiento_lote`
--
ALTER TABLE `insumos_mantenimiento_lote`
  ADD CONSTRAINT `id_mtnlote` FOREIGN KEY (`id_mntlote`) REFERENCES `mantenimiento_lote` (`id_mntlote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `insumos_quema_quimica`
--
ALTER TABLE `insumos_quema_quimica`
  ADD CONSTRAINT `id_quemaq_fk` FOREIGN KEY (`id_quemaq`) REFERENCES `quema_quimica` (`id_quemaq`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `liquidacion`
--
ALTER TABLE `liquidacion`
  ADD CONSTRAINT `num_lote_fk_lqd` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lote`
--
ALTER TABLE `lote`
  ADD CONSTRAINT `usuario_cedula_fk` FOREIGN KEY (`usuario_cedula`) REFERENCES `usuario` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `macheteada`
--
ALTER TABLE `macheteada`
  ADD CONSTRAINT `num_lote_fk_m` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `manejo_residuos_cosecha`
--
ALTER TABLE `manejo_residuos_cosecha`
  ADD CONSTRAINT `num_lote_fk_mrc` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mantenimiento_lote`
--
ALTER TABLE `mantenimiento_lote`
  ADD CONSTRAINT `num_lote_fk_ml` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `num_lote_fk_mnlote` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pajareo_celaduria_patos`
--
ALTER TABLE `pajareo_celaduria_patos`
  ADD CONSTRAINT `num_lote_fk_p` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `parafiscales`
--
ALTER TABLE `parafiscales`
  ADD CONSTRAINT `num_lote_fk_pf` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `preparacion_suelo`
--
ALTER TABLE `preparacion_suelo`
  ADD CONSTRAINT `num_lote_fk_preparacions` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `quema_fisica`
--
ALTER TABLE `quema_fisica`
  ADD CONSTRAINT `num_lote_fk_q` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `quema_quimica`
--
ALTER TABLE `quema_quimica`
  ADD CONSTRAINT `num_lote_fk_qq` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `riego`
--
ALTER TABLE `riego`
  ADD CONSTRAINT `num_lote_fk_rb` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `siembra_manual`
--
ALTER TABLE `siembra_manual`
  ADD CONSTRAINT `num_lote_fk_sim` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `siembra_mecanizada`
--
ALTER TABLE `siembra_mecanizada`
  ADD CONSTRAINT `num_lote_fk_smzd` FOREIGN KEY (`num_lote`) REFERENCES `lote` (`num_lote`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
