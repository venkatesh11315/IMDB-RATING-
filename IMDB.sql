 show databases;
+--------------------+
| Database           |
+--------------------+
| employesdb         |
| information_schema |
| moviesimdb         |
| mysql              |
| performance_schema |
| store              |
| sys                |
| world              |
+--------------------+
8 rows in set (0.00 sec)

mysql> use moviesimdb
Database changed
mysql> show tables;
+----------------------+
| Tables_in_moviesimdb |
+----------------------+
| artist               |
| artist_role          |
| genre                |
| media                |
| moivegenre           |
| movie                |
| review               |
| role                 |
| skills               |
| users                |
+----------------------+
10 rows in set (0.00 sec)

mysql> desc artist;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| artist_id | int          | NO   | PRI | NULL    |       |
| name      | varchar(100) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc aritist_role;

mysql> desc artist_role;
+-----------+------+------+-----+---------+-------+
| Field     | Type | Null | Key | Default | Extra |
+-----------+------+------+-----+---------+-------+
| artist_id | int  | YES  | MUL | NULL    |       |
| role_id   | int  | YES  | MUL | NULL    |       |
| movie_id  | int  | YES  | MUL | NULL    |       |
+-----------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> desc genre;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| genre_id | int          | NO   | PRI | NULL    |       |
| name     | varchar(200) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc media;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| media_id | int          | NO   | PRI | NULL    |       |
| movie_id | int          | YES  | MUL | NULL    |       |
| url      | varchar(100) | YES  |     | NULL    |       |
| types    | varchar(50)  | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> desc moivegenre;
+----------+------+------+-----+---------+-------+
| Field    | Type | Null | Key | Default | Extra |
+----------+------+------+-----+---------+-------+
| movie_id | int  | YES  | MUL | NULL    |       |
| genre_id | int  | YES  | MUL | NULL    |       |
+----------+------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc movie  ;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| movie_id     | int          | NO   | PRI | NULL    |       |
| title        | varchar(60)  | YES  |     | NULL    |       |
| release_data | date         | YES  |     | NULL    |       |
| descriptions | varchar(200) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> desc review  ;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| review_id | int          | NO   | PRI | NULL    |       |
| movie_id  | int          | YES  | MUL | NULL    |       |
| user_id   | int          | YES  | MUL | NULL    |       |
| rating    | varchar(10)  | YES  |     | NULL    |       |
| comments  | varchar(100) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> desc  role  ;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| role_id | int          | NO   | PRI | NULL    |       |
| name    | varchar(100) | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc skills ;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| skill_id | int          | NO   | PRI | NULL    |       |
| name     | varchar(200) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc users    ;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| user_id    | int          | NO   | PRI | NULL    |       |
| user_name  | varchar(100) | YES  |     | NULL    |       |
| user_email | varchar(11)  | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

///movies  data insert
mysql> desc movie;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| movie_id     | int          | NO   | PRI | NULL    |       |
| title        | varchar(60)  | YES  |     | NULL    |       |
| release_data | date         | YES  |     | NULL    |       |
| descriptions | varchar(200) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.02 sec)


mysql> desc media ;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| media_id | int          | NO   | PRI | NULL    |       |
| movie_id | int          | YES  | MUL | NULL    |       |
| url      | varchar(100) | YES  |     | NULL    |       |
| types    | varchar(50)  | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)


mysql> select * from media;
+----------+----------+------------------+--------+
| media_id | movie_id | url              | types  |
+----------+----------+------------------+--------+
|        1 |        1 | www.kuttywap.com | videos |
|        2 |        2 | www.moviesda.com | videos |
|        3 |        3 | www.moviesda.com | videos |
|        4 |        4 | www.kuttywap     | videos |
|        5 |        5 | www.kuttywap     | videos |
+----------+----------+------------------+--------+
5 rows in set (0.00 sec)


mysql> select * from genre;
+----------+----------------------+
| genre_id | name                 |
+----------+----------------------+
|        1 | Martin Scorsese      |
|        2 | Alfred Hitchcock     |
|        3 | Francis Ford Coppola |
|        4 | James Cameron        |
|        5 | Tim Burton           |
+----------+----------------------+
5 rows in set (0.00 sec)

mysql> select * from users;
+---------+-----------+-------------+
| user_id | user_name | user_email  |
+---------+-----------+-------------+
|       1 | cyber     | cyber@gmial |
|       2 | wss       | wss@gmial   |
|       3 | johnwick  | wickr@o     |
|       4 | johnk     | ww@o        |
|       5 | willam    | wickr@gmial |
+---------+-----------+-------------+
5 rows in set (0.00 sec)

mysql> select * from artist;
+-----------+----------------------+
| artist_id | name                 |
+-----------+----------------------+
|         1 | Billy Wilder         |
|         2 | Martin Scorsese      |
|         3 | Stanley Kubrick      |
|         4 | Francis Ford Coppola |
|         5 | Alfred Hitchcock     |
+-----------+----------------------+
5 rows in set (0.00 sec)
mysql> select * from skills;
+----------+-----------+
| skill_id | name      |
+----------+-----------+
|        1 | action    |
|        2 | Drama     |
|        3 | Comedy    |
|        4 | Adventure |
|        5 | Action    |
+----------+-----------+
5 rows in set (0.00 sec)
mysql> select * from role;
+---------+---------------------+
| role_id | name                |
+---------+---------------------+
|       1 | Location manager    |
|       2 | Camera Operator     |
|       3 | Production Designer |
|       4 | Producer            |
|       5 | Director            |
+---------+---------------------+
5 rows in set (0.00 sec);
mysql> select * from  movie;
+----------+----------------------------------+--------------+--------------------------------------+
| movie_id | title                            | release_data | descriptions                         |
+----------+----------------------------------+--------------+--------------------------------------+
|        1 | Evil Dead Rise                   | 2023-09-10   |  entertains, educates, and inspires. |
|        2 | No One Will Save You             | 2023-09-24   |  action and inspires                 |
|        3 | john wick 3                      | 2023-10-25   |  action                              |
|        4 | Guy Ritchie's The Covenant       | 2023-10-30   |  shooting                            |
|        5 | Transformers: Rise of the Beasts | 2023-10-01   |  action                              |
+----------+----------------------------------+--------------+--------------------------------------+
5 rows in set (0.0);
