create table if not exists Album_list (
	album_id serial primary key,
	album_name varchar(40) not null,
	album_year int check(album_year>1900)
);

create table if not exists Performers_list (
	perf_id serial primary key,
	perf_name varchar(40) unique not null
);

create table if not exists Musical_style_list (
	style_id serial primary key,
	style_name varchar(40) unique not null
);

create table if not exists Track_list (
	track_id serial primary key,
	track_name varchar(40) unique not null,
	track_duration int not null,
	track_album_id int references Album_list(album_id)
);

create table if not exists Collections (
	collection_id serial primary key,
	collection_name varchar(40) unique not null,
	collection_year int check(collection_year>1900),
	track_id int references Track_list(track_id)
);

create table if not exists Perfomers_Albums (
	perfomers_albums_id serial primary key,
	album_id int references Album_list(album_id),
	perf_id int references Performers_list(perf_id)
);

create table if not exists Perfomers_Styles (
	perfomers_styles_id serial primary key,
	perf_id int references Performers_list(perf_id),
	style_id int references Musical_style_list(style_id)
);

create table if not exists Collections_Tracks (
	collections_tracks_id serial primary key,
	track_id int references Track_list(track_id),
	collection_id int references Collections(collection_id)
);