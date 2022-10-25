SELECT (
 SELECT MAX(follower_count)
 FROM tbl_scraping
 WHERE ig_username = "surabaya" AND taken_at IN 
 (SELECT MAX(taken_at) FROM tbl_scraping WHERE ig_username='surabaya'
  AND (taken_at BETWEEN '2020-01-01' AND '2020-12-31'))
) AS f_2020 , 
(
  SELECT MAX(follower_count) AS f_2020 
 FROM tbl_scraping
 WHERE ig_username = "surabaya" AND taken_at IN 
 (SELECT MAX(taken_at) FROM tbl_scraping WHERE ig_username='surabaya'
  AND (taken_at BETWEEN '2021-01-01' AND '2021-12-31'))
) AS f_2021get_zero_comments