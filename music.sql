CREATE TABLE `albums` (
  `album_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(255) NOT NULL,
  `album_name` varchar(255) NOT NULL
);

CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(255) NOT NULL
);

CREATE TABLE `songs` (
  `song_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `song_name` text NOT NULL,
  `album_name` varchar(255) NOT NULL,
  `track_number` int(11) NOT NULL,
  `track_time` int(11) NOT NULL
);

ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`),
  ADD KEY `artist_name` (`artist_name`);

ALTER TABLE `albums`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `artist_name` (`artist_name`);

ALTER TABLE `albums`
  ADD FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`),
  ADD FOREIGN KEY (`artist_name`) REFERENCES `artist` (`artist_name`);

ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `album_id` (`album_id`);

ALTER TABLE `songs`
  ADD FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`),
  ADD FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`);
