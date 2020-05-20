CREATE DATABASE greatNovels;

  USE greatNovels;

  CREATE TABLE authors (
   id INT auto_increment,
   nameFirst VARCHAR(255),
   nameLast VARCHAR(255),
   createdAt DATETIME DEFAULT NOW(),
   updatedAt DATETIME DEFAULT NOW() on UPDATE NOW(),
   deletedAt DATETIME,
   PRIMARY KEY(id)
 );

  CREATE TABLE novels (
   id INT auto_increment,
   title VARCHAR(255),
   authorId INT,
   createdAt DATETIME DEFAULT NOW(),
   updatedAt DATETIME DEFAULT NOW() on UPDATE NOW(),
   deletedAt DATETIME,
   PRIMARY KEY(id),
   FOREIGN KEY(authorId) REFERENCES authors(id)
 );

  CREATE TABLE genres (
   id INT auto_increment,
   name VARCHAR(255),
   createdAt DATETIME DEFAULT NOW(),
   updatedAt DATETIME DEFAULT NOW() on UPDATE NOW(),
   deletedAt DATETIME,
   PRIMARY KEY(id)
 );

  CREATE TABLE novelsGenres (
   genreId INT,
   novelId INT,
   createdAt DATETIME DEFAULT NOW(),
   updatedAt DATETIME DEFAULT NOW() on UPDATE NOW(),
   deletedAt DATETIME,
   PRIMARY KEY (genreId, novelId)
 );

  CREATE USER 'greatNovels'@'localhost' IDENTIFIED WITH mysql_native_password BY 'n0^3l$';

  GRANT ALL ON greatNovels.* TO 'greatNovels'@'localhost';

  INSERT INTO authors (nameFirst, nameLast) Values('Bram', 'Stoker');
 INSERT INTO authors (nameFirst, nameLast) Values('Oscar', 'Wilde');
 INSERT INTO authors (nameFirst, nameLast) Values('Alice', 'Walker');
 INSERT INTO authors (nameFirst, nameLast) Values('Leo', 'Tolstoy');
 INSERT INTO authors (nameFirst, nameLast) Values('Charles', 'Dickens');
 INSERT INTO authors (nameFirst, nameLast) Values('Arthur', 'Miller');
 INSERT INTO authors (nameFirst, nameLast) Values('Alexandre', 'Dumas');
 INSERT INTO authors (nameFirst, nameLast) Values('Arthur Conan', 'Doyle');
 INSERT INTO authors (nameFirst, nameLast) Values('Robert Louis', 'Stevenson');
 INSERT INTO authors (nameFirst, nameLast) Values('Fyodor', 'Dostoyevsky');
 INSERT INTO authors (nameFirst, nameLast) Values('Agatha', 'Christie');
 INSERT INTO authors (nameFirst, nameLast) Values('Ray', 'Bradbury');
 INSERT INTO authors (nameFirst, nameLast) Values('George', 'Orwell');
 INSERT INTO authors (nameFirst, nameLast) Values('H.G.', 'Wells');
 INSERT INTO authors (nameFirst, nameLast) Values('Chinua', 'Achebe');

  INSERT INTO novels (title, authorId) Values('Dracula', 1);
 INSERT INTO novels (title, authorId) Values('The Picture of Dorian Gray', 2);
 INSERT INTO novels (title, authorId) Values('The Color Purple', 3);
 INSERT INTO novels (title, authorId) Values('War and Peace', 4);
 INSERT INTO novels (title, authorId) Values('A Tale of Two Cities', 5);
 INSERT INTO novels (title, authorId) Values('The Crucible', 6);
 INSERT INTO novels (title, authorId) Values('The Three Musketeers', 7);
 INSERT INTO novels (title, authorId) Values('THe Hound of the Baskervilles', 8);
 INSERT INTO novels (title, authorId) Values('The Strange Case of Dr. Jekyll and Mr. Hyde ', 9);
 INSERT INTO novels (title, authorId) Values('Crime and Punishment', 10);
 INSERT INTO novels (title, authorId) Values('Murder on the Orient Express', 11);
 INSERT INTO novels (title, authorId) Values('Fahrenheit 451', 12);
 INSERT INTO novels (title, authorId) Values('Animal Farm', 13);
 INSERT INTO novels (title, authorId) Values('The TIme Machine', 14);
 INSERT INTO novels (title, authorId) Values('Things Fall Apart', 15);

  INSERT INTO genres (name) Values ('Fiction');
 INSERT INTO genres (name) Values ('Horror');
 INSERT INTO genres (name) Values ('Fantasy');
 INSERT INTO genres (name) Values ('Gothic');
 INSERT INTO genres (name) Values ('Historical Fiction');
 INSERT INTO genres (name) Values ('War');
 INSERT INTO genres (name) Values ('Russain Literature');
 INSERT INTO genres (name) Values ('Drama');
 INSERT INTO genres (name) Values ('Plays');
 INSERT INTO genres (name) Values ('Adventure');
 INSERT INTO genres (name) Values ('French Literature');
 INSERT INTO genres (name) Values ('Mystery');
 INSERT INTO genres (name) Values ('Crime');
 INSERT INTO genres (name) Values ('Thriller');
 INSERT INTO genres (name) Values ('Science Fiction');
 INSERT INTO genres (name) Values ('Dystopia');
 INSERT INTO genres (name) Values ('Time Travel');
 INSERT INTO genres (name) Values ('African Literature');

 
  INSERT INTO novelsGenres (novelId, genreId) Values ('1', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('1', '2');
 INSERT INTO novelsGenres (novelId, genreId) Values ('1', '3');

  INSERT INTO novelsGenres (novelId, genreId) Values ('2', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('2', '2');
 INSERT INTO novelsGenres (novelId, genreId) Values ('2', '4');
 INSERT INTO novelsGenres (novelId, genreId) Values ('2', '3');

  INSERT INTO novelsGenres (novelId, genreId) Values ('3', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('3', '5');

  INSERT INTO novelsGenres (novelId, genreId) Values ('4', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('4', '5');
 INSERT INTO novelsGenres (novelId, genreId) Values ('4', '6');
 INSERT INTO novelsGenres (novelId, genreId) Values ('4', '7');

  INSERT INTO novelsGenres (novelId, genreId) Values ('5', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('5', '5');

  INSERT INTO novelsGenres (novelId, genreId) Values ('6', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('6', '5');
 INSERT INTO novelsGenres (novelId, genreId) Values ('6', '8');
 INSERT INTO novelsGenres (novelId, genreId) Values ('6', '9');

  INSERT INTO novelsGenres (novelId, genreId) Values ('7', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('7', '5');
 INSERT INTO novelsGenres (novelId, genreId) Values ('7', '10');
 INSERT INTO novelsGenres (novelId, genreId) Values ('7', '11');

  INSERT INTO novelsGenres (novelId, genreId) Values ('8', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('8', '12');
 INSERT INTO novelsGenres (novelId, genreId) Values ('8', '13');
 INSERT INTO novelsGenres (novelId, genreId) Values ('8', '14');

  INSERT INTO novelsGenres (novelId, genreId) Values ('9', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('9', '12');
 INSERT INTO novelsGenres (novelId, genreId) Values ('9', '15');
 INSERT INTO novelsGenres (novelId, genreId) Values ('9', '2');

  INSERT INTO novelsGenres (novelId, genreId) Values ('10', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('10', '7');
 INSERT INTO novelsGenres (novelId, genreId) Values ('10', '12');

  INSERT INTO novelsGenres (novelId, genreId) Values ('11', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('11', '12');

  INSERT INTO novelsGenres (novelId, genreId) Values ('12', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('12', '15');
 INSERT INTO novelsGenres (novelId, genreId) Values ('12', '16');

  INSERT INTO novelsGenres (novelId, genreId) Values ('13', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('13', '15');
 INSERT INTO novelsGenres (novelId, genreId) Values ('13', '16');

  INSERT INTO novelsGenres (novelId, genreId) Values ('14', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('14', '15');
 INSERT INTO novelsGenres (novelId, genreId) Values ('14', '17');

  INSERT INTO novelsGenres (novelId, genreId) Values ('15', '1');
 INSERT INTO novelsGenres (novelId, genreId) Values ('15', '5');
 INSERT INTO novelsGenres (novelId, genreId) Values ('15', '18');