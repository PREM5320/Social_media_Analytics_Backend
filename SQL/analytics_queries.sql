SELECT 
    pa.post_id,
    u.username AS posted_by,
    pa.engagement_score,
    RANK() OVER (ORDER BY pa.engagement_score DESC) AS rank
FROM PostAnalytics pa
JOIN Posts p ON pa.post_id = p.post_id
JOIN Users u ON p.user_id = u.user_id;

SELECT 
    u.user_id,
    u.username,
    SUM(pa.engagement_score) AS total_engagement,
    RANK() OVER (ORDER BY SUM(pa.engagement_score) DESC) AS rank
FROM Users u
JOIN Posts p ON u.user_id = p.user_id
JOIN PostAnalytics pa ON p.post_id = pa.post_id
GROUP BY u.user_id, u.username;

SELECT 
    p.post_id,
    u.username,
    p.content,
    p.post_date
FROM Posts p
JOIN Users u ON p.user_id = u.user_id
LEFT JOIN PostAnalytics pa ON p.post_id = pa.post_id
WHERE (pa.likes_count IS NULL OR pa.likes_count = 0)
  AND (pa.comments_count IS NULL OR pa.comments_count = 0);
















