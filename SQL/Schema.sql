DROP TABLE IF EXISTS PostAnalytics, Followers, Likes, Comments, Posts, Users;

-- USERS table
CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    join_date DATE DEFAULT CURRENT_DATE
);

-- POSTS table
CREATE TABLE Posts (
    post_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(user_id) ON DELETE CASCADE,
    content TEXT NOT NULL,
    post_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- LIKES table
CREATE TABLE Likes (
    like_id SERIAL PRIMARY KEY,
    post_id INT REFERENCES Posts(post_id) ON DELETE CASCADE,
    user_id INT REFERENCES Users(user_id) ON DELETE CASCADE,
    like_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (post_id, user_id) -- Prevent duplicate likes by the same user
);

-- COMMENTS table
CREATE TABLE Comments (
    comment_id SERIAL PRIMARY KEY,
    post_id INT REFERENCES Posts(post_id) ON DELETE CASCADE,
    user_id INT REFERENCES Users(user_id) ON DELETE CASCADE,
    comment_text TEXT NOT NULL,
    comment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- FOLLOWERS table
CREATE TABLE Followers (
    follower_id INT REFERENCES Users(user_id),
    followed_id INT REFERENCES Users(user_id),
    follow_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (follower_id, followed_id),
    CHECK (follower_id <> followed_id) -- User cannot follow themselves
);

-- POST ANALYTICS table
CREATE TABLE PostAnalytics (
    post_id INT PRIMARY KEY REFERENCES Posts(post_id) ON DELETE CASCADE,
    likes_count INT DEFAULT 0,
    comments_count INT DEFAULT 0,
    engagement_score FLOAT DEFAULT 0.0
);
