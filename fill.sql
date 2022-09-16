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
--collections
insert into collections(collection_name, collection_year, album_id, track_id)
values('random1','2022','8','2');
insert into collections(collection_name, collection_year, album_id, track_id)
values('random2','2022','8','1');
insert into collections(collection_name, collection_year, album_id, track_id)
values('random3','2022','1','1');
insert into collections(collection_name, collection_year, album_id, track_id)
values('random4','2022','1','2');
insert into collections(collection_name, collection_year, album_id, track_id)
values('random5','2022','3','1');
insert into collections(collection_name, collection_year, album_id, track_id)
values('random6','2022','4','1');
insert into collections(collection_name, collection_year, album_id, track_id)
values('random7','2022','5','1');
insert into collections(collection_name, collection_year, album_id, track_id)
values('random8','2022','6','1');