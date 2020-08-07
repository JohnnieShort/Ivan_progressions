CREATE TABLE "Album" (
  "id" int4 NOT NULL,
  "name" varchar(255),
  "fk_artist_id" int4 NOT NULL,
  "release_date" date,
  "fk_label_id" int4 NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "Artist" (
  "id" int4 NOT NULL,
  "name" varchar(255),
  "country" varchar(255),
  PRIMARY KEY ("id")
);

CREATE TABLE "Label" (
  "id" int4 NOT NULL,
  "name" varchar(255),
  "country" varchar(255),
  PRIMARY KEY ("id")
);

CREATE TABLE "Track" (
  "id" int4 NOT NULL,
  "duration" int4 NOT NULL,
  "name" varchar(255) NOT NULL,
  "fk_album_id" int4 NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "User" (
  "id" int4 NOT NULL,
  "nickname" varchar(255),
  "login" varchar(255),
  "password" varchar(255),
  "is_admin" bool,
  PRIMARY KEY ("id")
);

ALTER TABLE "Album" ADD CONSTRAINT "fk_artist_id" FOREIGN KEY ("fk_artist_id") REFERENCES "Artist" ("id");
ALTER TABLE "Album" ADD CONSTRAINT "fk_label_id" FOREIGN KEY ("fk_label_id") REFERENCES "Label" ("id");
ALTER TABLE "Track" ADD CONSTRAINT "fk_album_id" FOREIGN KEY ("fk_album_id") REFERENCES "Album" ("id");

