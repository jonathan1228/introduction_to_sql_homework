DROP TABLE IF EXISTS url;

CREATE TABLE url(
id serial primary key,
original_url varchar(80) CHECK(original_url != null),
count int DEFAULT 0
);

