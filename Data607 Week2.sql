drop table if exists Reviewers;
drop table if exists Movies;
drop table if exists Levels;

create table Movies 
(ID int auto_increment primary key not null, 
title varchar(100) null,
short_title varchar(40));

INSERT INTO Movies values(ID,'Jurassic World: Fallen Kingdom', 'Dinos again');
INSERT INTO Movies values(ID,'Mary Poppins Returns ',  'Mary Poppins');
INSERT INTO Movies values(ID,'Jumanji: Welcome to the Jungle', 'Jumanji again');
INSERT INTO Movies values(ID,'Kong: Skull Island', 'King Kong again');
INSERT INTO Movies values(ID,'Pirates of the Caribbean: Dead Men Tell No Tales', 'Depp again');
INSERT INTO Movies values(ID, 'Smurfs: The Lost Village', 'Blue again');
INSERT INTO Movies values(ID, 'Tyler Perrys Boo 2! A Madea Halloween','Madea again');
select * from movies;

CREATE TABLE Levels (
  review smallint primary key NOT NULL
) ;

INSERT INTO Levels( review ) VALUES(1),(2),(3),(4),(5);

create table Reviewers 
(Name varchar(100) null,
ID int, 
review smallint,
constraint foreign key (ID)
references Movies (ID),
foreign key (review)
references Levels (review));

INSERT INTO Reviewers values('Daphne Moon',1,4);
INSERT INTO Reviewers values('Daphne Moon',2,5);
INSERT INTO Reviewers values('Daphne Moon',3,3);
INSERT INTO Reviewers values('Daphne Moon',4,2);
INSERT INTO Reviewers values('Daphne Moon',5,1);
INSERT INTO Reviewers values('Daphne Moon',6,3);
INSERT INTO Reviewers values('Daphne Moon',7,5);
INSERT INTO Reviewers values('Martin Crane',1,4);
INSERT INTO Reviewers values('Martin Crane',2,1);
INSERT INTO Reviewers values('Martin Crane',3,3);
INSERT INTO Reviewers values('Martin Crane',4,5);
INSERT INTO Reviewers values('Martin Crane',5,5);
INSERT INTO Reviewers values('Martin Crane',6,1);
INSERT INTO Reviewers values('Martin Crane',7,2);
INSERT INTO Reviewers values('Gil Chesterton',1,1);
INSERT INTO Reviewers values('Gil Chesterton',2,2);
INSERT INTO Reviewers values('Gil Chesterton',3,1);
INSERT INTO Reviewers values('Gil Chesterton',4,1);
INSERT INTO Reviewers values('Gil Chesterton',5,1);
INSERT INTO Reviewers values('Gil Chesterton',6,1);
INSERT INTO Reviewers values('Gil Chesterton',7,1);
INSERT INTO Reviewers values('Chopper Dave',1,5);
INSERT INTO Reviewers values('Chopper Dave',2,3);
INSERT INTO Reviewers values('Chopper Dave',3,5);
INSERT INTO Reviewers values('Chopper Dave',4,5);
INSERT INTO Reviewers values('Chopper Dave',5,5);
INSERT INTO Reviewers values('Chopper Dave',6,2);
INSERT INTO Reviewers values('Chopper Dave',7,4);
INSERT INTO Reviewers values('Bulldog Briscoe',1,5);
INSERT INTO Reviewers values('Bulldog Briscoe',2,1);
INSERT INTO Reviewers values('Bulldog Briscoe',3,2);
INSERT INTO Reviewers values('Bulldog Briscoe',4,5);
INSERT INTO Reviewers values('Bulldog Briscoe',5,5);
INSERT INTO Reviewers values('Bulldog Briscoe',6,2);
INSERT INTO Reviewers values('Bulldog Briscoe',7,4);




select
rev.Name,
rev.review,
mov.title,
mov.short_title
from Reviewers as rev
left join Movies as mov 
on rev.ID = mov.ID;