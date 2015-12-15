PREPARE url(varchar, int) AS INSERT INTO url(id, original_url, count) VALUES (default, $1,$2);
EXECUTE url('www.google.com', 1);
EXECUTE url('www.yahoo.com', 2);
EXECUTE url('www.nba.com', 3);
EXECUTE url('www.galvanize.com', 4);
EXECUTE url('www.bing.com', 5);

SELECT * FROM url;
SELECT original_url FROM url;
SELECT * FROM url WHERE id = 2;
SELECT * FROM url WHERE original_url = 'www.google.com';
UPDATE url SET count = 10 WHERE id = 3;
DELETE FROM url WHERE original_url = 'www.bing.com';