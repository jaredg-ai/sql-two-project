select * from invoice_line
where unit_price > 0.99;


select c.first_name, c.last_name, i.total 
from invoice i 
join customer c 
on i.customer_id = c.customer_id;



SELECT c.first_name AS customer_first, c.last_name AS customer_last, e.first_name AS support_first, e.last_name AS support_last 
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;


select a.title, ar.name
from album a
join artist ar
on a.artist_id = ar.artist_id;


select p.track_id, pl.playlist_id, pl.name
from playlist_track p
join playlist pl
on p.playlist_id = pl.playlist_id;


select t.name, pl.playlist_id
from track t
join playlist_track pl
on t.track_id = pl.track_id
and playlist_id = 5;


SELECT t.name AS track, p.name AS playlist
FROM track t
JOIN playlist_track plt
ON t.track_id = plt.track_id
JOIN playlist p
ON p.playlist_id = plt.playlist_id;


select t.name as track, a.title as album
from track t 
join album a
on t.album_id = a.album_id
join genre g
on t.genre_id = g.genre_id
and g.name = 'Alternative & Punk';
