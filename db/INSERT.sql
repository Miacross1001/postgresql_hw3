insert into band(name) values 
	('King and Clown'),
	('Monkyrizz'),
	('Valhalla'),
	('Void Chapter'),
	('Uumph'),
	('Rammsmarin'),
	('Five finger on leg'),
	('Pentakill');

insert into genre(name) values 
	('Rock'),
	('Alternative'),
	('Electo'),
	('Pop'),
	('Rap');

insert into albums(name, issue) values 
	('A1', '1998-01-01'),
	('A2', '2001-12-21'),
	('A3', '1995-07-30'),
	('A4', '2018-02-11'),
	('A5', '2004-02-20'),
	('A6', '1993-03-03'),
	('A7', '1992-04-10'),
	('A8', '2018-05-30');

insert into music(name, duration, album_id) values 
	('M1 my phone', '00:01:20', 1),
	('M2', '00:02:15', 2),
	('M3', '00:03:00', 3),
	('M4', '00:01:45', 4),
	('M5', '00:03:10', 5),
	('M6', '00:04:50', 6),
	('M7 my music', '00:02:20', 7),
	('M8 мой дом', '00:03:20', 8),
	('M9', '00:01:28', 2),
	('M10', '00:02:45', 3),
	('M11', '00:04:02', 4),
	('M12', '00:02:42', 5),
	('M13', '00:03:01', 6),
	('M14', '00:01:58', 7),
	('M15', '00:02:00', 1);
	
insert into digest(name, issue) values 
	('D1', '2002-01-01'),
	('D2', '2019-02-21'),
	('D3', '2003-03-11'),
	('D4', '2020-01-01'),
	('D5', '2003-02-15'),
	('D6', '2018-05-10'),
	('D7', '2019-10-17'),
	('D8', '2006-12-30');

insert into genreband(genre_id, band_id) values 
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(2, 6),
	(3, 7),
	(1, 8),
	(2, 2),
	(4, 3),
	(5, 4),
	(5, 1),
	(1, 2),
	(1, 8);
	
insert into bandalbums(band_id, albums_id) values 
	(1, 8),
	(2, 7),
	(3, 6),
	(4, 5),
	(5, 4),
	(6, 3),
	(7, 2),
	(8, 1);

insert into musicdigest(music_id, digest_id) values 
	(1, 8),
	(2, 7),
	(3, 6),
	(4, 5),
	(5, 4),
	(6, 3),
	(7, 2),
	(8, 1),
	(9, 2),
	(10, 3),
	(11, 4),
	(12, 5),
	(13, 6),
	(14, 7),
	(15, 8);