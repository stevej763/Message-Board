require 'pg'

task :setup do
  connection = PG.connect
  connection.exec('CREATE DATABASE message_board;')

  connection = PG.connect :dbname => 'message_board';
  connection.exec('CREATE TABLE posts (id SERIAL PRIMARY KEY, title VARCHAR(100), content VARCHAR);')
end

task :seed_db do
  connection = PG.connect :dbname => 'message_board';
  connection.exec ('TRUNCATE TABLE posts;')
  connection.exec ("INSERT INTO posts (title, content) VALUES ('Post 1', 'This is some content for post 1');")
  connection.exec ("INSERT INTO posts (title, content) VALUES ('Post 2', 'This is some content for post 2');")
  connection.exec ("INSERT INTO posts (title, content) VALUES ('Post 3', 'This is some content for post 3');")
  connection.exec ("INSERT INTO posts (title, content) VALUES ('Post 4', 'This is some content for post 4');")
  connection.exec ("INSERT INTO posts (title, content) VALUES ('Post 5', 'This is some content for post 5');")
end