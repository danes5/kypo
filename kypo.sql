create database KYPO;
use KYPO;
create table users(
	name varchar(50) ,
	hash varchar(32) ,
	house varchar(50) ,
	nickname varchar(50));
INSERT INTO users (name, hash, house, nickname) VALUES ('Harry Potter', '89f288757f4d0693c99b007855fc075e', 'Gryffindor', 'harry');
INSERT INTO users (name, hash, house, nickname) VALUES ('Severus Snape', 'b3438d429eb95e919beea64a56c14bae', 'Slytherin', 'admin');
INSERT INTO users (name, hash, house, nickname) VALUES ('Cuthbert Binns', 'e19d5cd5af0378da05f63f891c7467af', 'Teacher', 'cuthy');
INSERT INTO users (name, hash, house, nickname) VALUES ('Ronald Bilius Weasley', 'bed128365216c019988915ed3add75fb', 'Gryffindor', 'ron');
INSERT INTO users (name, hash, house, nickname) VALUES ('Hermione Granger', 'f924f31d2214d098879d37cfa41e8447', 'Gryffindor', 'hermione'); 
