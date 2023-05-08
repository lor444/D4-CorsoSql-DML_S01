-- ESERCITAZIONE PROPOSTA DI SOLUZIONE

--  TABLE mail
CREATE TABLE persone (
	idPersona int not null PRIMARY KEY,
	cognome varchar(128) not null  default '',
	nome varchar(128) not null  default '',
	dataNascita date null 
);
--  TABLE mail
CREATE TABLE mail (
	idMail int not null PRIMARY KEY,
	idPersona int not null  default 0,
	idTipoIndirizzoMail int not null  default 0,
	indirizzoMail varchar(255) not null  default ''
);
--  TABLE tipiIndirizziMail
CREATE TABLE tipiIndirizziMail (
	idTipoIndirizzoMail int not null PRIMARY KEY,
	descrizione varchar(128) not null  default ''
);
--  TABLE tipiTelefono
CREATE TABLE tipiTelefono (
	idTipoTelefono int not null PRIMARY KEY,
	descrizione varchar(128) not null  default ''
);
--  TABLE telefono
CREATE TABLE telefono (
	idTelefono int not null PRIMARY KEY,
	idTipoTelefono int not null  default 0,
	numero varchar(64) not null  default ''
);
--  TABLE personeTelefoni
CREATE TABLE personeTelefoni (
	idPersonaTelefono int not null PRIMARY KEY,
	idPersona int not null  default 0,
	idTelefono int not null  default 0
);

-- FOREIGN KEYS
alter table mail add constraint fk_persone foreign key (idPersona) references persone(idPersona);
alter table mail add constraint fk_tipiMail foreign key (idTipoIndirizzoMail) references tipiindirizzimail(idTipoIndirizzoMail);
alter table telefono add constraint fk_tipiTelefono foreign key (idTipoTelefono) references tipitelefono(idTipoTelefono);
alter table personetelefoni add constraint fk_pt_persone foreign key (idPersona) references persone(idPersona);
alter table personetelefoni add constraint fk_pt_telefoni foreign key (idTelefono) references telefono(idtelefono);

-- PERSONE

INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (1,'Bellini','Pietro','1950-11-14');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (2,'Palmieri','Angela','2010-02-11');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (3,'Martini','Antonio','1992-05-06');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (4,'Martinelli','Angelo','2015-01-22');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (5,'Gallo','Margherita','1992-05-04');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (6,'Lombardo','Pietro','1978-07-08');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (7,'Rinaldi','Luciano','1972-08-04');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (8,'Neri','Margherita','2002-03-19');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (9,'Martini','Concetta','1996-04-18');
INSERT INTO PERSONE(idPersona,cognome,nome,datanascita) values (10,'Esposito','Rosa','2003-03-16');
-- TIPI MAIL
insert into tipiindirizzimail (idtipoindirizzomail,descrizione) values (101,'Personale');
insert into tipiindirizzimail (idtipoindirizzomail,descrizione) values (102,'Lavoro');
insert into tipiindirizzimail (idtipoindirizzomail,descrizione) values (103,'Pec');

-- INDIRIZZI MAIL 
insert into mail(idMail,idPersona,indirizzoMail,idTipoIndirizzoMail) values (201,1,'pietro-1992@outlook.com',101);
insert into mail(idMail,idPersona,indirizzoMail,idTipoIndirizzoMail) values (202,1,'pietro7bellini@email.it',101);
insert into mail(idMail,idPersona,indirizzoMail,idTipoIndirizzoMail) values (203,2,'angela.palmieri55@tiscali.it',101);
insert into mail(idMail,idPersona,indirizzoMail,idTipoIndirizzoMail) values (204,3,'martini-antonio29@yahoo.com',102);
insert into mail(idMail,idPersona,indirizzoMail,idTipoIndirizzoMail) values (205,4,'martinelli.angelo45@alice.it',101);
insert into mail(idMail,idPersona,indirizzoMail,idTipoIndirizzoMail) values (206,4,'angelo.2314@yahoo.com',102);
insert into mail(idMail,idPersona,indirizzoMail,idTipoIndirizzoMail) values (207,6,'pietro50lombardo@libero.it',101);
insert into mail(idMail,idPersona,indirizzoMail,idTipoIndirizzoMail) values (208,7,'luciano1482@outlook.com',102);
insert into mail(idMail,idPersona,indirizzoMail,idTipoIndirizzoMail) values (209,8,'margherita_1419@libero.it',101);
insert into mail(idMail,idPersona,indirizzoMail,idTipoIndirizzoMail) values (210,10,'rosa20esposito@email.it',101);
insert into mail(idMail,idPersona,indirizzoMail,idTipoIndirizzoMail) values (211,10,'esposito_rosa41@pecpec.it',103);

-- TIPI TELEFONO
insert into tipitelefono (idtipotelefono,descrizione) values (301,'Fisso');
insert into tipitelefono (idtipotelefono,descrizione) values (302,'Mobile');

-- TELEFONI
INSERT INTO telefono (idTelefono, numero, idTipoTelefono) VALUES(401,'+39 445 77682459',302);
INSERT INTO telefono (idTelefono, numero, idTipoTelefono) VALUES(402,'+39 445 88626176',302);
INSERT INTO telefono (idTelefono, numero, idTipoTelefono) VALUES(403,'+39 453 93411989',302);
INSERT INTO telefono (idTelefono, numero, idTipoTelefono) VALUES(404,'+39 456 52398281',302);
INSERT INTO telefono (idTelefono, numero, idTipoTelefono) VALUES(405,'+39 476 18919717',302);
INSERT INTO telefono (idTelefono, numero, idTipoTelefono) VALUES(406,'+39 493 24231135',302);
INSERT INTO telefono (idTelefono, numero, idTipoTelefono) VALUES(407,'+39 494 68262156',302);
INSERT INTO telefono (idTelefono, numero, idTipoTelefono) VALUES(408,'+39 496 49518791',302);
INSERT INTO telefono (idTelefono, numero, idTipoTelefono) VALUES(409,'0171 37728693',301);
INSERT INTO telefono (idTelefono, numero, idTipoTelefono) VALUES(410,'0733 47342377',301);
INSERT INTO telefono (idTelefono, numero, idTipoTelefono) VALUES(411,'0736 54604448',301);
INSERT INTO telefono (idTelefono, numero, idTipoTelefono) VALUES(412,'0823 48131986',301);
INSERT INTO telefono (idTelefono, numero, idTipoTelefono) VALUES(413,'0932 59731682',301);

-- PERSONE TELEFONO

INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (501,1,401);
INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (502,10,402);
INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (503,5,403);
INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (504,8,404);
INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (505,3,405);
INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (506,10,406);
INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (507,4,407);
INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (508,6,408);
INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (509,3,409);
INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (510,9,409);
INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (511,5,410);
INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (512,7,410);
INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (513,6,411);
INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (514,10,412);
INSERT INTO personetelefoni(idpersonatelefono,idpersona,idtelefono) values (515,1,413);





