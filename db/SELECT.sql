SELECT g.name AS genre, count(DISTINCT gb.band_id) AS count_band FROM genre g, genreband gb
WHERE g.id = gb.genre_id 
GROUP BY g.name;

SELECT count(m.album_id) AS count_music FROM music m, albums a
WHERE m.album_id = a.id AND a.issue BETWEEN '2018-01-01' AND '2020-12-31';

SELECT avg(m.duration) AS avg_duration, a.name AS album FROM music m, albums a
WHERE m.album_id = a.id
GROUP BY a.name
ORDER BY a.name;

SELECT DISTINCT b.name FROM band b
WHERE b.name NOT IN (SELECT DISTINCT b.name FROM band b
					LEFT JOIN bandalbums bb ON b.id=bb.band_id
					LEFT JOIN albums a ON a.id=bb.albums_id
					WHERE a.issue >= '2020-01-01' AND a.issue <= '2020-12-31')

SELECT DISTINCT d.name FROM digest d, musicdigest md, music m, albums a, bandalbums ba, band b
WHERE d.id = md.digest_id AND m.id = md.music_id AND m.album_id = a.id AND ba.albums_id = a.id AND ba.band_id = b.id AND b.name = 'Pentakill';

SELECT a.name AS album_name, count(gb.band_id) AS count_genre FROM albums a, genre g, genreband gb, band b, bandalbums ba
WHERE a.id = ba.albums_id AND b.id = ba.band_id AND b.id = gb.band_id AND g.id = gb.genre_id
GROUP BY a.name
HAVING count(gb.band_id) > 1; 

SELECT m.name AS name_music, count(md.digest_id) FROM music m, musicdigest md
WHERE m.id = md.music_id
GROUP BY m.name 
HAVING count(md.digest_id) = 0;

SELECT b.name AS band_name, min(m.duration) AS min_duration FROM band b, music m, albums a, bandalbums ba
WHERE a.id = m.album_id AND a.id = ba.albums_id AND b.id = ba.band_id
GROUP BY b.name, m.duration 
HAVING m.duration = (SELECT min(music.duration) FROM music);

SELECT a.name AS album_name, count(m.album_id) AS count_music FROM music m, albums a
WHERE m.album_id = a.id
GROUP BY a.name;

SELECT min(db.count) AS min_count FROM (SELECT a.name, count(m.album_id) FROM albums a, music m WHERE m.album_id = a.id GROUP BY a.name) AS db;






