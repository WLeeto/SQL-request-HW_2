--название и год выхода альбомов, вышедших в 2018 году
select album_name, album_year from album_list al 
where album_year = 2018;

--название и продолжительность самого длительного трека
select track_name, track_duration from track_list tl 
order by track_duration desc
limit 1;

--название треков, продолжительность которых не менее 3,5 минуты
select track_name from track_list tl 
where track_duration >= 210;

--названия сборников, вышедших в период с 2018 по 2020 год включительно
select collection_name from collections c 
where collection_year between 2018 and 2020;

--исполнители, чье имя состоит из 1 слова
select perf_name from performers_list pl 
where perf_name not like '% %';

--название треков, которые содержат слово "мой"/"my"
select track_name from track_list tl 
where track_name like '%мой%' or track_name like '%my%';

---------------------Продвинутая выборка данных---------------------

--количество исполнителей в каждом жанре
select style_name, count(perf_name) from perfomers_styles ps
join performers_list pl on ps.perf_id = pl.perf_id 
join musical_style_list msl on ps.style_id = msl.style_id
group by style_name;

--количество треков, вошедших в альбомы 2019-2020 годов
select count(track_name) from track_list tl 
join album_list al on tl.track_album_id =al.album_id 
where album_year between 2019 and 2020;

--средняя продолжительность треков по каждому альбому
select  album_name, avg(track_duration) from album_list al 
join track_list tl on tl.track_album_id = al.album_id 
group by album_name;

--все исполнители, которые не выпустили альбомы в 2020 году
select perf_name from perfomers_albums pa 
join performers_list pl on pa.perf_id = pl.perf_id 
join album_list al on pa.album_id = al.album_id
where album_year != 2020;

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
select collection_name from collections_tracks ct 
join collections c on ct.collection_id = c.collection_id 
join track_list tl on c.track_id = tl.track_id 
join album_list al on tl.track_album_id = al.album_id 
join perfomers_albums pa on pa.album_id = al.album_id 
join performers_list pl on pa.perf_id = pl.perf_id 
where perf_name = 'Kaleida';

--название альбомов, в которых присутствуют исполнители более 1 жанра
select album_name from album_list al 
join perfomers_albums pa on pa.album_id = al.album_id 
join performers_list pl on pa.perf_id = pl.perf_id 
join perfomers_styles ps on ps.perf_id = pl.perf_id
group by album_name
having count(style_id) > 1;

--наименование треков, которые не входят в сборники
select track_name from track_list tl 
left join collections c on c.track_id = tl.track_id
where collection_name is null;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
select perf_name from performers_list pl 
join perfomers_albums pa on pa.perf_id = pl.perf_id 
join album_list al on pa.album_id = al.album_id 
join track_list tl on tl.track_album_id = al.album_id
where track_duration = (select min(track_duration) from track_list tl)
group by perf_name;

--название альбомов, содержащих наименьшее количество треков
select album_name, count(track_name) from track_list tl 
join album_list al on tl.track_album_id = al.album_id 
group by album_name
having count(track_name) = (
select count(track_name) from track_list tl 
join album_list al on tl.track_album_id = al.album_id 
group by album_name
order by count(track_name)
limit 1
)	









