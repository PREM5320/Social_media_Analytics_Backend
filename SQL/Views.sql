CREATE OR REPLACE VIEW top_5_engaging_posts AS
SELECT 
    p.post_id,
    u.username,
    pa.likes_count,
    pa.comments_count,
    pa.engagement_score,
    p.post_date
FROM PostAnalytics pa
JOIN Posts p ON pa.post_id = p.post_id
JOIN Users u ON p.user_id = u.user_id
ORDER BY pa.engagement_score DESC
LIMIT 5;

CREATE OR REPLACE VIEW most_followed_users AS
SELECT 
    u.user_id,
    u.username,
    COUNT(f.follower_id) AS follower_count
FROM Users u
LEFT JOIN Followers f ON u.user_id = f.followed_id
GROUP BY u.user_id
ORDER BY follower_count DESC;


CREATE OR REPLACE VIEW active_users_summary AS
SELECT 
    u.user_id,
    u.username,
    COUNT(DISTINCT p.post_id) AS posts_made,
    COUNT(DISTINCT l.like_id) AS likes_given,
    COUNT(DISTINCT c.comment_id) AS comments_made
FROM Users u
LEFT JOIN Posts p ON u.user_id = p.user_id
LEFT JOIN Likes l ON u.user_id = l.user_id
LEFT JOIN Comments c ON u.user_id = c.user_id
GROUP BY u.user_id
ORDER BY posts_made DESC, comments_made DESC, likes_given DESC;

