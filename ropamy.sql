drop table if exists opiniones;
drop table if exists imagenes;
drop table if exists detalleventa;
drop table if exists detallereservacion;
drop table if exists ventas;
drop table if exists reservaciones;
drop table if exists usuarios;
drop table if exists perfiles;
drop table if exists items;
drop table if exists tipo;
drop table if exists categorias;

create table perfiles (
idperfil int primary key,
descrripcion varchar(30)
 );
insert into perfiles values(1,'ADMINISTRADOR');
insert into perfiles values(2,'USUARIO');

create table usuarios(
 nombreusuario character varying(16) primary key not null,
 clave character varying(16) not null,
 nombre1 character varying (20) not null,
 nombre2 character varying (20) null,
 apellidop character varying (20) not null,
 apellidon character varying (20) not null,
 correo character varying (50) not null unique, 
 foto character varying (50)  default 'client_01.jpg',
 direccion character varying (100) not null,
 dni character varying (50) not null,
 idperfil int not null default 2
);

insert into usuarios values('yomaadmin','123456','Yamara','','Ronquillo','','ym@gmail.com','jpg','SAN JUAN','1234567890',1);
insert into usuarios values('yomauser','123456','Yamara','','Ronquillo','','y3m@gmail.com','jpg','SAN JUAN','1234567890',2);



select * from usuarios;


create table tipo(
idtipo int not null primary key,
descripcion character varying(20) not null
);

insert into tipo values(1,'Productos');
insert into tipo values(2,'Servicios');

create table categorias(
 idcategorias int not null primary key,
 descripcion character varying(25),
 imagen character varying(25)
);

select * from categorias;

insert into categorias values(1,'SENCILLAS','banner-02.jpg');
insert into categorias values(2,'MODERNAS','f.jpg');
insert into categorias values(3,'MATRIMONIALES','banner-10.jpg');
insert into categorias values(4,'JUVENILES','banner-05.jpg');
insert into categorias values(5,'ECONOMICAS','banner-06.jpg');
insert into categorias values(6,'INFANTILES','banner-07.jpg');


create table items(
 iditem int not null primary key auto_increment,
 nombre character varying(50) not null,
 descripcion character varying(100) not null,
 descripcion2 character varying(1000) ,
 precio float,
 descuento float,
 idtipo int not null references tipo on update cascade on delete restrict,
 idcategorias int not null references categorias on update cascade on delete restrict,
 imagen character varying(50),
 stock int,
 rate float default 0
);


insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 1','Habitacion del Hotel','Servicio de Restaurant incluido',75.00,0.00,1,1,'item-02.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 2','Habitacion del Hotel','Servicio de Restaurant incluido',36.50,0,1,1,'item-03.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 3','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-07.jpg',5,default);



insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate)values(default,'Habitacion 4','Habitacion del Hotel','Servicio de Restaurant incluido',75.00,0,1,1,'item-17.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate)values(default,'Habitacion 5','Habitacion del Hotel','Servicio de Restaurant incluido',36.50,0,1,1,'item-09.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 6','Habitacion del Hotel','Servicio de Restaurant incluido',165.90,0,1,1,'item-14.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 7','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-04.jpg',5,default);

insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 8','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-13.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 9','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-15.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 10','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-10.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 11','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-06.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 12','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-09.jpg',5,default);
 
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 13','Habitacion del Hotel','Servicio de Restaurant incluido',75.00,0.00,1,1,'item-02.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 14','Habitacion del Hotel','Servicio de Restaurant incluido',36.50,0,1,1,'item-03.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 15','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-07.jpg',5,default);



insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate)values(default,'Habitacion 16','Habitacion del Hotel','Servicio de Restaurant incluido',75.00,0,1,1,'item-17.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate)values(default,'Habitacion 17','Habitacion del Hotel','Servicio de Restaurant incluido',36.50,0,1,1,'item-09.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 18','Habitacion del Hotel','Servicio de Restaurant incluido',165.90,0,1,1,'item-14.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 19','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-04.jpg',5,default);

insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 20','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-13.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 21','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-15.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 22','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-10.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 23','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-06.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 24','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-09.jpg',5,default);
 




insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate)values(default,'Habitacion 25','Habitacion del Hotel','Servicio de Restaurant incluido',75.00,0,1,1,'item-17.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate)values(default,'Habitacion 26','Habitacion del Hotel','Servicio de Restaurant incluido',36.50,0,1,1,'item-09.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 27','Habitacion del Hotel','Servicio de Restaurant incluido',165.90,0,1,1,'item-14.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 28','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-04.jpg',5,default);

insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 29','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-13.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 30','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-15.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 31','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-10.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 32','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-06.jpg',5,default);
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate) values(default,'Habitacion 33','Habitacion del Hotel','Servicio de Restaurant incluido',29.50,0,1,1,'item-09.jpg',5,default);
 


select * from items;



 create table imagenes(
  idimagen int primary key auto_increment,
  nombre character varying (50) not null,
  iditem int not null references items on delete restrict on update cascade
 );

select * from items;

 insert into imagenes values (default,'Aromachology-Repairing-Mask-1.jpg',7);
 insert into imagenes values (default,'Aromachology-Repairing-Mask-2.jpg',7);

create table opiniones(
 idopinion int primary key auto_increment,
 opinion character varying(200),
 nombreusuario character varying(16) references usuarios on delete restrict on update restrict,
 idproducto int references items on delete restrict on update restrict,
 fecha TIMESTAMP not null default CURRENT_TIMESTAMP,
 clasificacion int not null
);

create table reservaciones(
 idreserva bigint not null primary key auto_increment ,
 nombreusuario character varying(16) references usuarios on update cascade on delete restrict, 
 fecha TIMESTAMP not null default CURRENT_TIMESTAMP,
 estado VARCHAR(1) default 'E',
 total float default 0
);


create table detallereservacion(
 idcompra bigint not null references reservaciones on update cascade on delete restrict,
 idtem int not null references items on update cascade on delete restrict,
 cantidad int not null,
 precio float not null,
 descuento float not null, 
 iva float not null default 12
);
 
create table ventas(
 idventa bigint not null primary key auto_increment,
 nombreusuario character varying(16) references usuarios on update cascade on delete restrict, 
 fecha timestamp not null default current_timestamp,
 total float default 0
);

create table detalleventa(
 idventa bigint not null references ventas on update cascade on delete restrict,
 idtem int not null references items on update cascade on delete restrict,
 cantidad int not null,
 precio float not null,
 descuento float not null, 
 iva float not null default 12
);

