# Social_media_Analytics_Backend
>>> A beginner-level SQL project developed during my internship at Elevate Labs (July 2025).

This project simulates a backend system for tracking engagement on a social media platform using PostgreSQL. It includes tables for users, posts, likes, comments, and followers, along with automated engagement analytics and smart reporting using SQL views and window functions.

---

##Tools Used

- PostgreSQL (v16)
- pgAdmin for SQL execution
- dbdiagram.io for schema visualization
- GitHub for version control and sharing

---

##Folder Structure

SocialMediaAnalytics-Backend
┣ CSV
┃ ┣ ranked_posts.csv
┃ ┣ ranked_users.csv
┃ ┣ Active_users_summary.csv
┃ ┣ Most_followed_users.csv
┃ ┣ Post_Analytics_table.csv
┃ ┣ Posts_table
┃ ┣ top5_engaging_posts.csv
┃ ┣ Users_table.csv
┃ ┗ zero_engagement_post.csv

┣ Docs
┃ ┣ users_table.png
┃ ┣ top_5_posts.png
┃ ┣ Active_users.png
┃ ┣ Post_Analytics_table.png
┃ ┣ Ranked_users.png
┃ ┣ Ranked_posts.png
┃ ┣ Posts_table.png
┃ ┣ Zero_engagement_posts.png
┃ ┗ most_followed_users.png

┣ Database_Schema_Design
┃ ┣ schema_diagram.png
┃ ┗ tables_structure.png

┣ SQL
┃ ┣ create_tables.sql
┃ ┣ Insert_data.sql
┃ ┣ Triggers.sql
┃ ┣ Views.sql
┃ ┗ analytics_queries.sql

┣ ElevateLabs_Project_Report.docx
---

##  Features Implemented

-  Relational schema with 6 linked tables
-  Triggers to auto-update post engagement
-  Views for:
  --> Top 5 most engaging posts
  --> Most followed users
  --> Active user summaries
-  Analytics with:
  --> `RANK()` and `ROW_NUMBER()`
  --> Zero engagement post detection
-  All outputs exported as `.csv` and `.png` for evaluation

---

## Learnings

- Practiced writing clean SQL queries and managing foreign keys
- Learned to use triggers for automation
- Gained experience with analytical queries in PostgreSQL
- Understood the importance of backend data for social platforms

---

## Author

Prem Kumar Kurukanti.
SQL Intern – Elevate Labs  

---

>>>  Project completed independently as per internship guidelines. All code, queries, and outputs are part of my own work.
