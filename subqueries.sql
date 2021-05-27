select *
from invoice
where invoice_id in (
  select invoice_id from invoice_line
  where unit_price > 0.99);

select *
from playlist_track
where playlist_track in (
  select playlist_track from playlist
  where name = 'Music');


select *
from track
where genre_id in (
  select genre_id from genre
  where name = 'Comedy');

select * 
from album
where album_id in (
  select album_id from track
  where name = 'Fireball');

select *
from track
where album_id in (
  select album_id from album
  where artist_id in (
    select artist_id from artist
    where name = 'Queen'
));
