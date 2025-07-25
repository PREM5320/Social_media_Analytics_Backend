CREATE OR REPLACE FUNCTION update_post_analytics()
RETURNS TRIGGER AS $$
BEGIN
    -- If the row doesn't exist, insert it first
    INSERT INTO PostAnalytics (post_id, likes_count, comments_count, engagement_score)
    VALUES (
        NEW.post_id,
        (SELECT COUNT(*) FROM Likes WHERE post_id = NEW.post_id),
        (SELECT COUNT(*) FROM Comments WHERE post_id = NEW.post_id),
        0.0
    )
    ON CONFLICT (post_id) DO NOTHING;

    -- Then update the counts
    UPDATE PostAnalytics
    SET
        likes_count = (SELECT COUNT(*) FROM Likes WHERE post_id = NEW.post_id),
        comments_count = (SELECT COUNT(*) FROM Comments WHERE post_id = NEW.post_id),
        engagement_score = (SELECT COUNT(*) FROM Likes WHERE post_id = NEW.post_id) * 1.0
                        + (SELECT COUNT(*) FROM Comments WHERE post_id = NEW.post_id) * 1.5
    WHERE post_id = NEW.post_id;

    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
