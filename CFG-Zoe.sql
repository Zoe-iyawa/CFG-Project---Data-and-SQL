
-- Assignment 
-- CREATE TABLES
CREATE DATABASE spotify;
USE spotify;
CREATE TABLE LabelInfo (Label_ID VARCHAR(20) PRIMARY KEY, Label_Name VARCHAR(50));

CREATE TABLE AlbumInfo (Album_ID VARCHAR(10) NOT NULL PRIMARY KEY , Album_Name VARCHAR(50), Album_Type VARCHAR (20), 
Release_Date DATE, Label_ID VARCHAR(20), FOREIGN KEY (Label_ID) REFERENCES LabelInfo(Label_ID));

CREATE TABLE TrackInfo ( Track_ID VARCHAR(10) NOT NULL PRIMARY KEY, Track_Name VARCHAR (50), 
Track_Number INTEGER, Duration TIME, Track_popularity INTEGER, Album_ID VARCHAR (10), FOREIGN KEY (Album_ID) REFERENCES AlbumInfo (Album_ID));

CREATE TABLE ArtistInfo ( Artist_ID VARCHAR(10) NOT NULL PRIMARY KEY, Artist_Name VARCHAR (50), Label_ID VARCHAR(20),
FOREIGN KEY (Label_ID) REFERENCES LabelInfo(Label_ID));

CREATE TABLE GenreInfo (Genre_ID VARCHAR(10) NOT NULL PRIMARY KEY, Genre_Name VARCHAR (50),Label_ID VARCHAR(20),
FOREIGN KEY(Label_ID) REFERENCES LabelInfo(Label_ID));

CREATE TABLE TrackGenres(Track_ID VARCHAR(10) NOT NULL, Genre_ID VARCHAR (10) NOT NULL, 
FOREIGN KEY (Track_ID) REFERENCES Trackinfo(Track_ID), FOREIGN KEY (Genre_ID) REFERENCES Genreinfo(Genre_ID));

CREATE TABLE TrackArtist (Track_ID VARCHAR(10) NOT NULL, Artist_ID VARCHAR (10) NOT NULL, 
FOREIGN KEY (Track_ID) REFERENCES TrackInfo(Track_ID), FOREIGN KEY (Artist_ID) REFERENCES Artistinfo(Artist_ID));

INSERT INTO TrackInfo ( Track_ID, Track_Name, Track_Number, Duration, Track_popularity, Album_ID)
VALUES ('6mN8', 'Amazing Grace', 1, '00:09:15', 10, 'Album_1'), 
('58sg', 'Silent Night', 2, '00:08:55', 20,'Album_1' ),
('45tQ', 'Ancient Canyons', 3, '00:09:05', 30, 'Album_1'),
('3VFD', 'Pacha Mama Medicina', 1, '00:05:05', 40, 'Album_2'),
('7LwJ', 'Palace Of Light', 2, '00:05:51', 50, 'Album_2'),
('3I9h', 'Jeweled Lotus (Om Mani Peme Hum)', 3, '00:09:23', 60, 'Album_2'),
('0K3b', 'Loka (May All Beings Be Happy)', 1, '00:06:57', 70,  'Album_3'), 
('3Vke', 'Shiva Radiance (I Am That I Am)', 2, '00:09:13', 80,  'Album_3'),
('0z2o', 'Dream Healing', 3, '00:09:42', 90, 'Album_3' ),
('6cCO', 'See The World Burn', 1, '00:02:44', 100,  'Album_4'), 
('6T0w', 'Black Sands', 2, '00:02:31', 90,  'Album_4'),
('1RDx', 'Squad Goals', 3, '00:04:17', 80,  'Album_4'),
('3UYP', 'All Gold', 1, '00:02:10', 70,  'Album_5'), 
('5rVu', 'Gladiators', 2, '00:03:36', 60,  'Album_5'),
('5sRZ', 'Power', 3, '00:03:33', 50, 'Album_5' ),
('4zpL', 'Bright Side', 1, '00:03:30', 40,  'Album_6'), 
('62vw', 'Rumble In Kerma', 2, '00:02:52', 30,  'Album_6'),
('1sgV', 'The Coin', 3, '00:04:03', 20, 'Album_6' ),
('3Cql', 'Reign', 2, '00:04:21', 20,'Album_7'),
('0Z7Z', 'Kings Calling', 3, '00:04:08', 30,'Album_7'),
('6icL', 'Rah', 1, '00:02:29', 40, 'Album_8'), 
('5VIJ', 'Fire', 2, '00:03:25', 50,'Album_8'),
('5ZZE', 'Drifting', 3, '00:03:36', 60,'Album_8'),
('2jSA', 'One Rainy Wish', 1, '00:05:27', 70, 'Album_9'), 
('4Hxn', 'Little Wing', 2, '00:04:30', 80, 'Album_9'),
('7M73', 'Wait Until Tomorrow', 3, '00:03:39', 90,'Album_9'),
('4qgw', 'Castles Made Of Sand', 1, '00:04:14', 100, 'Album_10'), 
('7cud', 'Come On (Part 1)', 2, '00:03:18', 90, 'Album_10');


INSERT INTO AlbumInfo (Album_ID, Album_Name, Album_Type , Release_Date, Label_ID)
VALUES ('Album_1', 'Echoes of Eternity', 'Album', '2024-01-31','Label_1'),
('Album_2', 'Whispers in the Wind', 'Single', '2024-01-31', 'Label_1'),
('Album_3', 'Harmony of the Ages', 'Album', '2024-01-31', 'Label_2'),
('Album_4', 'Melodies of the Heart', 'Compilation', '2024-01-31','Label_3'),
('Album_5', 'Serenade of the Soul', 'Album',  '2024-01-31', 'Label_2'),
('Album_6', 'Symphony of Dreams', 'Compilation', '2024-01-31','Label_2'),
('Album_7', 'Rhapsody of Reflection', 'Single', '2024-01-31','Label_4'),
('Album_8', 'Chorus of Creation', 'Album', '2024-01-31', 'Label_4'),
('Album_9', 'Verse of Vitality', 'Album', '2024-01-31', 'Label_1'),
('Album_10', 'Ballad of Bliss', 'Single', '2024-01-31', 'Label_3');

INSERT INTO LabelInfo (Label_ID, Label_Name)
VALUES ('Label_1', 'CC Entertainment'),
('Label_2', 'Sami Springs'),
('Label_3', 'Mountain Music Inc'),
('Label_4', 'Pop Beatz'); 

INSERT INTO ArtistInfo (Artist_ID, Artist_Name, Label_ID)
VALUES ('Artist_1', 'Red Hot Rebellion','Label_1' ),
('Artist_2', 'Wyli P','Label_2'),
('Artist_3', 'Caul', 'Label_1'),
('Artist_4', 'Beyonce', 'Label_3'),
('Artist_5', 'Harry Styles','Label_3'),
('Artist_6', 'Jonas Brothers','Label_3'),
('Artist_7', 'Rema','Label_4'),
('Artist_8', 'Davido','Label_4');

INSERT INTO GenreInfo (Genre_ID, Genre_Name,Label_ID)
VALUES( 'Genre_1','Pop', 'Label_1'),
 ('Genre_2','Rock', 'Label_2'),
  ('Genre_3','Afrobeats', 'Label_4'),
 ('Genre_4','Hardcore', 'Label_3'),
 ( 'Genre_5','Hip Hop', 'Label_1'),
 ('Genre_6','Country', 'Label_2'),
  ('Genre_7','Jazz', 'Label_4'),
 ('Genre_8','Reggae', 'Label_3');


INSERT INTO TrackArtist(Track_ID, Artist_ID)
VALUES ('6mN8', 'Artist_5'), 
('58sg', 'Artist_8'),
('45tQ', 'Artist_5'),
('3VFD', 'Artist_4'),
('7LwJ', 'Artist_4'),
('3I9h', 'Artist_3'),
('0K3b', 'Artist_1'), 
('3Vke', 'Artist_2'),
('0z2o', 'Artist_3'),
('6cCO', 'Artist_6'), 
('6T0w', 'Artist_7'),
('1RDx', 'Artist_8'),
('3UYP', 'Artist_8'), 
('5rVu', 'Artist_8'),
('5sRZ', 'Artist_1'),
('4zpL', 'Artist_7'), 
('62vw', 'Artist_7'),
('1sgV', 'Artist_7'),
('3Cql', 'Artist_2'),
('0Z7Z', 'Artist_2'),
('6icL', 'Artist_2'), 
('5VIJ', 'Artist_5'),
('5ZZE', 'Artist_5'),
('2jSA', 'Artist_6'), 
('4Hxn', 'Artist_6'),
('7M73', 'Artist_4'),
('4qgw', 'Artist_3'), 
('7cud', 'Artist_1');

INSERT INTO TrackGenres(Track_ID, Genre_ID)
VALUES ('6mN8', 'Genre_5'), 
('58sg', 'Genre_5'),
('45tQ', 'Genre_6'),
('3VFD', 'Genre_8'),
('7LwJ', 'Genre_8'),
('3I9h', 'Genre_1'),
('0K3b', 'Genre_2'), 
('3Vke', 'Genre_3'),
('0z2o', 'Genre_4'),
('6cCO', 'Genre_6'), 
('6T0w', 'Genre_7'),
('1RDx', 'Genre_8'),
('3UYP', 'Genre_6'), 
('5rVu', 'Genre_4'),
('5sRZ', 'Genre_4'),
('4zpL', 'Genre_4'), 
('62vw', 'Genre_3'),
('1sgV', 'Genre_4'),
('3Cql', 'Genre_2'),
('0Z7Z', 'Genre_2'),
('6icL', 'Genre_1'), 
('5VIJ', 'Genre_3'),
('5ZZE', 'Genre_6'),
('2jSA', 'Genre_5'), 
('4Hxn', 'Genre_4'),
('7M73', 'Genre_8'),
('4qgw', 'Genre_6'), 
('7cud', 'Genre_7');

SELECT *
FROM GenreInfo;

SELECT *
FROM LabelInfo;

SELECT *
FROM AlbumInfo;

SELECT *
FROM TrackInfo;

SELECT *
FROM TrackGenres; 

-- IF THE USER IS INTERESTED IN SONGS WITH EXCELLENT RATING
DELIMITER ///
CREATE FUNCTION Popularity_scale (Track_popularity INTEGER)
RETURNS VARCHAR (10)
DETERMINISTIC
BEGIN
DECLARE Scale VARCHAR (10);
CASE 
WHEN Track_popularity < 20 THEN SET Scale = "POOR";
WHEN Track_popularity >= 20 AND Track_popularity <= 49 THEN SET Scale = "FAIR";
WHEN Track_popularity >= 50 AND Track_popularity <= 70 THEN SET Scale = "GOOD";
WHEN Track_popularity >= 71 AND Track_popularity <= 80 THEN SET Scale = "VERY GOOD";
WHEN Track_popularity  > 80 THEN SET Scale = "EXCELLENT";
ELSE SET Scale = "NULL";
END CASE;
RETURN Scale;

END 
///
DELIMITER ;

SELECT *, Popularity_scale (Track_popularity)
FROM Trackinfo
ORDER BY Track_popularity;

USE spotify;

-- Find most popular track name in each album or genre 
With Popular_Tracks AS (SELECT Track_Name, Album_ID, Track_popularity, RANK ()OVER(PARTITION BY Album_ID ORDER BY Track_popularity DESC) AS Ranking
FROM Trackinfo
ORDER BY Album_ID)

SELECT Album_ID, Track_Name
FROM Popular_Tracks
WHERE Ranking = 1;

-- Finding Songs by a Specific Artist 
SELECT *
FROM ArtistInfo;

Create VIEW Artistsongs AS SELECT Track_Name,Artist_Name,Track_popularity
FROM TrackArtist
JOIN Trackinfo ON TrackArtist.Track_ID = Trackinfo.Track_ID
JOIN Artistinfo ON TrackArtist.Artist_ID = Artistinfo.Artist_ID
ORDER BY Artist_Name, Track_popularity DESC;

SELECT Artist_Name,Track_Name
FROM artistsongs
WHERE Artist_Name = 'Jonas Brothers';

-- Finding the top Song by a Specific Artist 
SELECT Artist_Name, Track_Name
FROM artistsongs
WHERE Artist_Name = 'Jonas Brothers'
LIMIT 1;

-- Find tracks in specific genres. 
SELECT Genre_Name, Track_Name
FROM TrackGenres
JOIN Genreinfo ON TrackGenres.Genre_ID = Genreinfo.Genre_ID
JOIN Trackinfo ON TrackGenres.Track_ID = Trackinfo.Track_ID
WHERE Genre_Name = "Pop";

-- Finding Genres with More than 4 Tracks. 

SELECT Genre_Name, Count(Track_Name) AS num_of_tracks
FROM TrackGenres
JOIN Genreinfo ON TrackGenres.Genre_ID = Genreinfo.Genre_ID
JOIN Trackinfo ON TrackGenres.Track_ID = Trackinfo.Track_ID
GROUP BY Genre_Name
HAVING Count(Track_Name) > 4;

-- Finding tracks by a specific Artist
DELIMITER //
CREATE PROCEDURE RecommendationbyArtist ()
BEGIN
SELECT Track_Name
FROM Trackinfo
JOIN TrackArtist ON Trackinfo.Track_ID = TrackArtist.Track_ID
WHERE Artist_ID IN ('Artist_7', 'Artist_8');
END 
// 
DELIMITER ;

CALL RecommendationbyArtist ();