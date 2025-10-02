CREATE TABLE public."public.v3" (
	appid int4 NULL,
	required_age float4 NULL,
	is_free bool NULL,
	controller_support bool NULL,
	developer text NULL,
	publisher text NULL,
	"name" text NULL,
	positive int4 NULL,
	negative int4 NULL,
	average_forever int4 NULL,
	average_2weeks int4 NULL,
	median_forever int4 NULL,
	median_2weeks int4 NULL,
	genre text NULL,
	ccu int4 NULL,
	"genre.1" text NULL,
	owners_estimated_avg int4 NULL,
	price_usd float4 NULL,
	language_count int4 NULL,
	is_english bool NULL,
	achievement_count int4 NULL
);





CREATE VIEW top_games_by_reviews AS
SELECT
    name,
    positive,
    negative
FROM
    "public.v3"
ORDER BY
    positive DESC
LIMIT 10;




CREATE VIEW genre_popularity AS
SELECT
    genre,
    SUM(owners_estimated_avg) AS total_estimated_owners
FROM
    "public.v3"
GROUP BY
    genre
ORDER BY
    total_estimated_owners DESC;



CREATE VIEW games_by_developer AS
SELECT
    developer,
    COUNT(appid) AS total_games,
    SUM(positive) AS total_positive_reviews,
    SUM(owners_estimated_avg) AS total_estimated_owners
FROM
    "public.v3"
WHERE
    developer IS NOT NULL
GROUP BY
    developer
ORDER BY
    total_estimated_owners DESC;



CREATE VIEW free_vs_paid_games AS
SELECT
    is_free,
    AVG(positive) AS avg_positive_reviews,
    AVG(negative) AS avg_negative_reviews,
    COUNT(*) AS total_games
FROM
    "public.v3"
GROUP BY
    is_free;