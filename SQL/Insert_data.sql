-- USERS
INSERT INTO Users (username, join_date) VALUES
('arya_k', '2024-06-01'),
('ravi_dev', '2024-06-03'),
('megha.s', '2024-06-05'),
('nitesh_99', '2024-06-08'),
('shruti.ai', '2024-06-10'),
('techie_rahul', '2024-06-11'),
('deepa_92', '2024-06-12'),
('karthik.v', '2024-06-13'),
('pooja_ray', '2024-06-14'),
('anuj.g', '2024-06-15');

-- POSTS
INSERT INTO Posts (user_id, content, post_date) VALUES
(1, 'Just started learning SQL. Loving it!', '2024-07-01 09:00:00'),
(2, 'Backend devs, let’s connect!', '2024-07-01 10:00:00'),
(3, 'Hot take: CSS is harder than SQL.', '2024-07-01 11:00:00'),
(4, 'Check out my new portfolio site!', '2024-07-01 12:00:00'),
(5, 'Anyone up for a hackathon next week?', '2024-07-01 13:00:00'),
(1, 'SQL window functions are so cool!', '2024-07-02 09:00:00'),
(6, 'Why is debugging so satisfying?', '2024-07-02 10:00:00'),
(7, 'Tech burnout is real. Rest well, coders.', '2024-07-02 11:00:00');

-- LIKES
INSERT INTO Likes (post_id, user_id, like_date) VALUES
(1, 2, CURRENT_TIMESTAMP),
(1, 3, CURRENT_TIMESTAMP),
(1, 4, CURRENT_TIMESTAMP),
(2, 1, CURRENT_TIMESTAMP),
(2, 5, CURRENT_TIMESTAMP),
(3, 6, CURRENT_TIMESTAMP),
(4, 7, CURRENT_TIMESTAMP),
(4, 8, CURRENT_TIMESTAMP),
(5, 2, CURRENT_TIMESTAMP),
(5, 3, CURRENT_TIMESTAMP),
(5, 6, CURRENT_TIMESTAMP),
(6, 4, CURRENT_TIMESTAMP),
(6, 9, CURRENT_TIMESTAMP),
(7, 5, CURRENT_TIMESTAMP),
(8, 1, CURRENT_TIMESTAMP);

-- COMMENTS
INSERT INTO Comments (post_id, user_id, comment_text, comment_date) VALUES
(1, 3, 'Same here! SQL is 🔥', CURRENT_TIMESTAMP),
(1, 4, 'What course are you using?', CURRENT_TIMESTAMP),
(2, 1, 'Let’s collaborate sometime!', CURRENT_TIMESTAMP),
(3, 5, 'Facts 💯', CURRENT_TIMESTAMP),
(5, 6, 'I’m in! What’s the theme?', CURRENT_TIMESTAMP),
(6, 7, 'Totally agree!', CURRENT_TIMESTAMP),
(7, 8, 'Yes! Self-care is key', CURRENT_TIMESTAMP),
(8, 9, 'Take breaks often. Helps a lot.', CURRENT_TIMESTAMP);

-- FOLLOWERS
INSERT INTO Followers (follower_id, followed_id, follow_date) VALUES
(2, 1, CURRENT_TIMESTAMP),
(3, 1, CURRENT_TIMESTAMP),
(4, 2, CURRENT_TIMESTAMP),
(5, 3, CURRENT_TIMESTAMP),
(6, 4, CURRENT_TIMESTAMP),
(7, 5, CURRENT_TIMESTAMP),
(8, 6, CURRENT_TIMESTAMP),
(9, 7, CURRENT_TIMESTAMP),
(10, 8, CURRENT_TIMESTAMP),
(1, 9, CURRENT_TIMESTAMP);
