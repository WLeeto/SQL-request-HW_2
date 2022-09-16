--название и год выхода альбомов, вышедших в 2018 году
select album_name, album_year  from album_list 
where album_year = 2018;

--название и продолжительность самого длительного трека
select track_name, track_duration from track_list
order by track_duration desc 
limit 1;

--название треков, продолжительность которых не менее 3,5 минуты
select track_name from track_list
where track_duration >= 210;

--названия сборников, вышедших в период с 2018 по 2020 год включительно
select collection_name from collections
where collection_year between 2018 and 2020;

--исполнители, чье имя состоит из 1 слова
select perf_name from performers_list
where perf_name not like '% %';

--название треков, которые содержат слово "мой"/"my"
select track_name from track_list
where track_name like '%мой%' or track_name like '%my%';