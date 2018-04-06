create database coffeShop;

use coffeShop;
create table idTable (
	predicat varchar(3),
	currentValue int
); 

create table categorie(
    id varchar(7) primary key,
    nom  varchar(15)
)ENGINE = InnoDB;

create table variete(
    id varchar(7) primary key,
    nom  varchar(15),
	description  varchar(300),
	idCategorie varchar(7),
	image varchar(60),
    foreign key (idCategorie) references categorie(id)
)ENGINE = InnoDB;

/* Etat : simple =0 ; personnalisé=1*/
create table produit(
    id varchar(7) primary key,
    nom  varchar(15),
    idVariete varchar(7),
	image varchar(30),
	etat int,
    foreign key (idVariete) references variete(id)
)ENGINE = InnoDB;

create table artCafe(
    id varchar(7) primary key,
    intitule  varchar(15),
	image varchar(60)
)ENGINE = InnoDB;

create table administrateur(
	id varchar(7) primary key,
	email varchar(20),
	nom  varchar(15),
	modeDePasse varchar(20)
)ENGINE = InnoDB;



insert into categorie values ('CAT1','cafe');

insert into variete values ('VAR1','Espresso',' un café très corsé obtenu par percolation avec l\'utilisation d\'une machine à espresso. Les grains de café, finement moulus, sont tassés dans un porte-filtre au-travers duquel l’eau chaude passe très rapidement.','CAT1','espresso.jpg');
insert into variete values ('VAR2','Americano',' un espresso allongé avec deux doses d’eau chaude. C’est une alternative pour ceux qui trouvent l’espresso trop corsé, qui rappelle un peu le café filtre. ','CAT1','americano.jpg');
insert into variete values ('VAR3','Macchiato',' Il s’agit d’un espresso auquel on ajoute un peu de mousse de lait.','CAT1','macchiato.jpg');
insert into variete values ('VAR4','Cappuccino','l’équilibre parfait. Constitué de parts égales d’espresso, de lait et de mousse de lait, sur laquelle on peut saupoudrer un peu de cannelle ou de chocolat.','CAT1','cappucino.jpg');
insert into variete values ('VAR5','Latte','plaira davantage à ceux qui préfèrent leur café avec un peu plus de lait. Il est composé d’espresso, de 2 doses de lait chaud et d’un peu de mousse de lait.','CAT1','latte.jpg');
insert into variete values ('VAR6','Breve','ressemble beaucoup au latte, à l’exception que le lait chaud est remplacé par de la crème.','CAT1','breve.jpg');
insert into variete values ('VAR7','Flat white','Il s’agit d’un espresso auquel on ajoute une part égale de lait chaud, mais pas de mousse de lait. ','CAT1','flate-white.jpg');
insert into variete values ('VAR8','Moka',' une boisson chaude typiquement italienne composée de cappuccino, de crème et de chocolat, le tout mélangé avec de la poudre de cacao.','CAT1','moka.jpg');
insert into variete values ('VAR10','Affogato',' est un espresso versé sur de la crème glacée à la vanille.  Pour une version « fin de soirée », on peut aussi l’accompagner d’une liqueur alcoolisée. ','CAT1','affogato.jpg');
insert into variete values ('VAR11','café alcoolisés','composés d’espresso, de sucre granulé et de crème fouettée, le café irlandais comprend également du whiskey irlandais tandis que le café brésilien contient du Grand Marnier et de la liqueur de café','CAT1','cafes-alcoolises.jpg');



insert into artCafe values ('ART1','papillon','papillon-art-barista-cafe-mada-coffe-shop.jpg');
insert into artCafe values ('ART2','flocon','flocon-art-barista-cafe-mada-coffe-shop.jpg');
insert into artCafe values ('ART3','coeur','lune-coeur-art-barista-cafe-mada-coffe-shop.jpg');
insert into artCafe values ('ART4','cygne','cygne-art-barista-cafe-mada-coffe-shop.jpg');
insert into artCafe values ('ART5','chat','chat-art-barista-cafe-mada-coffe-shop.jpg');
insert into artCafe values ('ART6','lapin','lapin-art-barista-cafe-mada-coffe-shop.jpg');


insert into idTable values ('VAR',12);
insert into idTable values ('ART',7);