CREATE DATABASE my_new_database;

CREATE TABLE my_table(
 
id SERIAL PRIMARY KEY,
name varchar(255) DEFAULT NULL,
valid boolean DEFAULT true
);