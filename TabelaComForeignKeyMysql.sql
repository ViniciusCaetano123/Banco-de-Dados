create table dadosExcel( id int PRIMARY KEY AUTO_INCREMENT,
idUser int, 
dados JSON, 
CONSTRAINT fk_idUser FOREIGN KEY (idUser) REFERENCES usuariosT(id) 
)

create table animal (
    id int PRIMARY key AUTO_INCREMENT,
    idCli int,
    peso decimal not null,
    raca varchar(100) not null,
    dataNasc varchar(13) not null,
    dataCadastramento datetime not null,
    CONSTRAINT fk_idClie FOREIGN KEY (idCli)
    REFERENCES cliente(id)
)

create table horarioMarcado(
id int PRIMARY key AUTO_INCREMENT, 
servico varchar(200) not null, 
idClis int, 
idFunc int, 
dia datetime, 
CONSTRAINT fk_id_cli_hora FOREIGN KEY (idClis) REFERENCES clientes(id),
CONSTRAINT fk_id_func_hora FOREIGN KEY (idFunc) REFERENCES funcionarios(id) 
)

/**************************/
alter table cliente 
add column id int primary key auto_increment
  