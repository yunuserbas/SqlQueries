

create database projetapi;
CREATE TABLE `projetapi`.`data`(
message text,
documentation text
);
select * from data;

select * from data_velo;
select * from df_velo;
select * from velomagg;
select * from parking_vendredi;
select * from vendredi;
select * from df1_vendredi;
select * from df_parking_v;

select * from df_parking_v where `fields.name` = "Saint Roch";

select * from df_parking_v;

select * from velo_samedi
where `fields.name` = "Beaux-Arts";






