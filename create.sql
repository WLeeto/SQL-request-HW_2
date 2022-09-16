create table if not exists Album_list (
	album_id serial primary key,
	album_name varchar(40) not null,
	album_year int
);
create table if not exists Track_list (
	track_id serial primary key,
	track_name varchar(40) not null,
	track_duration int not null,
	track_album_id int references Album_list(album_id)
);
create table if not exists Collections (
	collection_id serial primary key,
	collection_name varchar(40) not null,
	collection_year int not null,
	album_id int references Album_list(album_id),
	track_id int references Track_list(track_id)
);
create table if not exists Performers_list (
	perf_id serial primary key,
	perf_name varchar(40) not null
);

create table if not exists Musical_style_list (
	style_id serial primary key,
	style_name varchar(40) not null
);
create table if not exists Perfomers_Albums (
	album_id int references Album_list(album_id),
	perf_id int references Performers_list(perf_id)
);
create table if not exists Perfomers_Styles (
	style_id int references Musical_style_list(style_id),
	perf_id int references Performers_list(perf_id)
);
