require 'pg'

task :reset do
  connection = PG.connect
  connection.exec('DROP DATABASE message_board WITH (FORCE);')
end

task :setup do
  connection = PG.connect
  connection.exec('CREATE DATABASE message_board;')

  connection = PG.connect :dbname => 'message_board';
  connection.exec('CREATE TABLE posts (id SERIAL PRIMARY KEY, user_id INT, title VARCHAR(100), content VARCHAR, likes INT, dislikes INT);')
  connection.exec('CREATE TABLE comments (id SERIAL PRIMARY KEY, post_id INT, user_id INT, content VARCHAR, likes INT, dislikes INT);')
  connection.exec('CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(100), email VARCHAR(100), password VARCHAR(100));')
end

task :seed_db do
  connection = PG.connect :dbname => 'message_board';

  connection.exec ("INSERT INTO users VALUES (1, 'Steve', 'steve@fakemail.com', 'password123');")


  connection.exec ("INSERT INTO posts VALUES (11111111, 123, 'Post 1', 'This is some content for post 1', 3, 0);")
  connection.exec ("INSERT INTO posts VALUES (22222222, 123, 'Post 2', 'This is some content for post 2', 3, 0);")
  connection.exec ("INSERT INTO posts VALUES (33333333, 123, 'Post 3', 'This is some content for post 3', 3, 0);")
  connection.exec ("INSERT INTO posts VALUES (44444444, 123, 'Post 4', 'This is some content for post 4', 3, 0);")
  connection.exec ("INSERT INTO posts VALUES (55555555, 123, 'Post 5', 'This is some content for post 5', 3, 0);")

  connection.exec ("INSERT INTO comments VALUES (1, 11111111, 456, 'This is the first comment on post 1', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (2, 11111111, 456, 'This is the second comment on post 1', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (3, 11111111, 456, 'This is the third comment on post 1', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (4, 11111111, 789, 'This is the fourth comment on post 1', 3, 0);")

  connection.exec ("INSERT INTO comments VALUES (5, 22222222, 123, 'This is the first comment on post 2', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (6, 22222222, 123, 'This is the second comment on post 2', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (7, 22222222, 123, 'This is the third comment on post 2', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (8, 22222222, 742, 'This is the fourth comment on post 2', 3, 0);")

  connection.exec ("INSERT INTO comments VALUES (9, 33333333, 746, 'This is the first comment on post 3', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (10, 33333333, 831, 'This is the second comment on post 3', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (11, 33333333, 153, 'This is the third comment on post 3', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (12, 33333333, 121, 'This is the fourth comment on post 3', 3, 0);")

  connection.exec ("INSERT INTO comments VALUES (13, 44444444, 115, 'This is the first comment on post 4', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (14, 44444444, 442, 'This is the second comment on post 4', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (15, 44444444, 354, 'This is the third comment on post 4', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (16, 44444444, 632, 'This is the fourth comment on post 4', 3, 0);")

  connection.exec ("INSERT INTO comments VALUES (17, 55555555, 221, 'This is the first comment on post 5', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (18, 55555555, 1, 'This is the second comment on post 5', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (19, 55555555, 2, 'This is the third comment on post 5', 3, 0);")
  connection.exec ("INSERT INTO comments VALUES (20, 55555555, 3, 'This is the fourth comment on post 5', 3, 0);")

end
