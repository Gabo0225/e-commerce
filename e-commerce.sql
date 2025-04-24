create table Usuarios (
    IdUser int auto_increment primary key,
    Nombre varchar(50),
    Email varchar(40),
    Contraseña varchar(10)
);

create table Productos (
    IdProducto int auto_increment primary key,
    NombreProducto varchar(20),
    ClaseProducto Varchar(15),
    ValorUnitario int
);

create table Carrito (
    IdPedido int auto_increment primary key,
    IdUser int, 
    IdProducto int,
    ValorTotal int,
    foreign key (IdUser) references Usuarios(Iduser),
    foreign key (IdProducto) references Productos(IdProducto)
);

create table Pasarela (
    IdCompra int auto_increment primary key,
    MetodoPago enum('Transferencia Bancaria','PSE','Nequi','Tarjeta'),
    IdUser int,
    IdProducto int,
    ValorTotal int,
    foreign key (IdUser) references Usuarios(Iduser),
    foreign key (IdProducto) references Productos(IdProducto)
);

insert into Usuarios (Nombre, Email, Contraseña) values 
('Oscar Leon','Leon@aol.com','leoncito13'),
('Carolina Fernandez','cfernandez@icloud.com','Fcarolina15'),
('Ariel Jimenez','ArJi@yahoo.com','Ajicito17');

insert into Productos (NombreProducto, ClaseProducto, ValorUnitario) values 
('Smart TV 50"', 'Televisor',1900000),
('Airfryer 3L', 'Airfryer',650000),
('Nevecon', 'Nevera',3200000);