create table if not exists genre (
	id serial primary key,
	name varchar(60) not null
);

create table if not exists band (
	id serial primary key,
	name varchar(60) not null
);

create table if not exists albums (
	id serial primary key,
	name varchar(60) not null,
	issue date not null
);

create table if not exists music (
	id serial primary key,
	name varchar(60) not null,
	duration time not null,
	album_id integer references albums(id)
);

create table if not exists digest (
	id serial primary key,
	name varchar(60) not null,
	issue date not null
);

create table if not exists genreBand (
	genre_id integer references genre(id),
	band_id integer references band(id),
	constraint genreband_pk primary key (genre_id, band_id)
);

create table if not exists bandAlbums (
	band_id integer references band(id),
	albums_id integer references albums(id),
	constraint bandalbums_pk primary key (band_id, albums_id)
);

create table if not exists musicDigest (
	music_id integer references music(id),
	digest_id integer references digest(id),
	constraint musicdigest_pk primary key (music_id, digest_id)
);


	
