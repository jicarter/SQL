SELECT
    Id,
    Title,
    SongLength,
    ReleaseDate,
    GenreId,
    ArtistId,
    AlbumId
FROM Song;

SELECT s.Title,
       a.ArtistName
  FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;

--INSERT INTO Genre (Label) VALUES ('Techno');

select SongLength from Song where Id = 18;

-- The following is the output you get when you run the query above.
--> 237

update Song
set SongLength = 515
where Id = 18;

-- Once you run the update statement, in order to make sure the value has changed, we run the select query again.
select SongLength from Song where Id = 18;
--> 515

--delete from Song where Id = 18;

SELECT
  Id  
FROM Genre

SELECT
    ArtistName
FROM Artist
ORDER BY ArtistName

SELECT s.Title,
       a.ArtistName
  FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;


SELECT 
    ArtistId
FROM Album
WHERE Label = 'Pop';


SELECT
    Label
From Genre

SELECT 
    ArtistId
FROM Album
WHERE GenreId = 'Rock';


SELECT
    Title
FROM Album

INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('TOOL', 1990);

INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Opiate', '03/10/1992', 2652, 'Zoo', 26, 2);
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Part of Me', 317, '03/10/1992', 2, 26, 23);

SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id;
SELECT a.Title, s.Title, Artist.ArtistName FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id;
