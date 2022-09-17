-- performers_list
insert into performers_list(perf_name)
values('RHCP');
insert into performers_list(perf_name)
values('30 seconds to mars');
insert into performers_list(perf_name)
values('Linkin Park');
insert into performers_list(perf_name)
values('Limp Bizkit');
insert into performers_list(perf_name)
values('ED Sheeran');
insert into performers_list(perf_name)
values('Imagion Dragons');
insert into performers_list(perf_name)
values('P!nk');
insert into performers_list(perf_name)
values('Kaleida');
-- musical_style_list
insert into musical_style_list(style_name)
values('Rock');
insert into musical_style_list(style_name)
values('Chill');
insert into musical_style_list(style_name)
values('Think EP');
insert into musical_style_list(style_name)
values('Dance');
insert into musical_style_list(style_name)
values('Jazz');
-- album_list
insert into album_list(album_name, album_year)
values('Californication','1999');
insert into album_list(album_name, album_year)
values('This is war','2009');
insert into album_list(album_name, album_year)
values('Meteora','2003');
insert into album_list(album_name, album_year)
values('Still Sucks','2021');
insert into album_list(album_name, album_year)
values('You need me','2009');
insert into album_list(album_name, album_year)
values('Evolve','2017');
insert into album_list(album_name, album_year)
values('Try This','2003');
insert into album_list(album_name, album_year)
values('Think','2015');
insert into album_list(album_name, album_year)
values('Super album','2018');
insert into album_list(album_name, album_year)
values('New album','2018');
insert into album_list(album_name, album_year)
values('Album 2020','2020');
-- track_list
insert into track_list(track_name, track_album_id, track_duration)
values('Think','8','153');
insert into track_list(track_name, track_album_id, track_duration)
values('The Call','8','158');
insert into track_list(track_name, track_album_id, track_duration)
values('Take me to the river','8','142');
insert into track_list(track_name, track_album_id, track_duration)
values('Around the world','1','108');
insert into track_list(track_name, track_album_id, track_duration)
values('Escape','2','218');
insert into track_list(track_name, track_album_id, track_duration)
values('Easier to run','3','201');
insert into track_list(track_name, track_album_id, track_duration)
values('Faint','3','180');
insert into track_list(track_name, track_album_id, track_duration)
values('Live the Hate','4','162');
insert into track_list(track_name, track_album_id, track_duration)
values('You need me','5','122');
insert into track_list(track_name, track_album_id, track_duration)
values('Believer','6','182');
insert into track_list(track_name, track_album_id, track_duration)
values('Whatever it takes','6','167');
insert into track_list(track_name, track_album_id, track_duration)
values('Trouble','7','170');
insert into track_list(track_name, track_album_id, track_duration)
values('Free','7','171');
insert into track_list(track_name, track_album_id, track_duration)
values('Get on top','1','165');
insert into track_list(track_name, track_album_id, track_duration)
values('Californication','1','167');
insert into track_list(track_name, track_album_id, track_duration)
values('My misery','1','155');
insert into track_list(track_name, track_album_id, track_duration)
values('First track 2020','11','180');
insert into track_list(track_name, track_album_id, track_duration)
values('Second track 2020','11','155');
insert into track_list(track_name, track_album_id, track_duration)
values('This will contain my','1','160');
insert into track_list(track_name, track_album_id, track_duration)
values('Тут будет слово мой','2','160');
--collections
insert into collections(collection_name, collection_year, track_id)
values('random1','2022','2');
insert into collections(collection_name, collection_year, track_id)
values('random2','2022','1');
insert into collections(collection_name, collection_year, track_id)
values('random3','2022','1');
insert into collections(collection_name, collection_year, track_id)
values('random4','2022','2');
insert into collections(collection_name, collection_year, track_id)
values('random5','2022','1');
insert into collections(collection_name, collection_year, track_id)
values('random6','2022','1');
insert into collections(collection_name, collection_year, track_id)
values('random7','2022','1');
insert into collections(collection_name, collection_year, track_id)
values('random8','2022','1');
insert into collections(collection_name, collection_year, track_id)
values('random9','2018','1');
insert into collections(collection_name, collection_year, track_id)
values('random10','2019','1');
--заполняем performers_styles
insert into perfomers_styles(style_id, perf_id)
values('1','1');
insert into perfomers_styles(style_id, perf_id)
values('1','2');
insert into perfomers_styles(style_id, perf_id)
values('1','3');
insert into perfomers_styles(style_id, perf_id)
values('1','4');
insert into perfomers_styles(style_id, perf_id)
values('1','6');
insert into perfomers_styles(style_id, perf_id)
values('1','7');
insert into perfomers_styles(style_id, perf_id)
values('2','5');
insert into perfomers_styles(style_id, perf_id)
values('2','8');
insert into perfomers_styles(style_id, perf_id)
values('3','8');
insert into perfomers_styles(style_id, perf_id)
values('4','6');
insert into perfomers_styles(style_id, perf_id)
values('1','5');
--заполняем performers_albums
insert into perfomers_albums(album_id, perf_id)
values('1','1');
insert into perfomers_albums(album_id, perf_id)
values('2','2');
insert into perfomers_albums(album_id, perf_id)
values('3','3');
insert into perfomers_albums(album_id, perf_id)
values('4','4');
insert into perfomers_albums(album_id, perf_id)
values('5','5');
insert into perfomers_albums(album_id, perf_id)
values('6','6');
insert into perfomers_albums(album_id, perf_id)
values('10','6');
insert into perfomers_albums(album_id, perf_id)
values('7','7');
insert into perfomers_albums(album_id, perf_id)
values('8','8');
insert into perfomers_albums(album_id, perf_id)
values('9','8');
--заполняем collections_trucks
insert into collections_tracks (track_id, collection_id)
values('1','1');
insert into collections_tracks (track_id, collection_id)
values('1','2');
insert into collections_tracks (track_id, collection_id)
values('2','2');
insert into collections_tracks (track_id, collection_id)
values('2','3');
insert into collections_tracks (track_id, collection_id)
values('3','1');
insert into collections_tracks (track_id, collection_id)
values('3','4');