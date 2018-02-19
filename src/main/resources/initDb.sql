DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS books;

DROP SEQUENCE IF EXISTS global_seq_stud;
DROP SEQUENCE IF EXISTS global_seq_book;

CREATE SEQUENCE global_seq_stud START 100;
CREATE SEQUENCE global_seq_book START 1000;

CREATE TABLE students(
  id INTEGER PRIMARY KEY DEFAULT nextval('global_seq_stud'),
  firstname VARCHAR NOT NULL ,
  lastname VARCHAR NOT NULL ,
  tel VARCHAR,
  dob DATE
);

CREATE TABLE books(
  id INTEGER PRIMARY KEY DEFAULT nextval('global_seq_book'),
  author VARCHAR NOT NULL ,
  title VARCHAR NOT NULL ,
  studId INTEGER NOT NULL ,
  FOREIGN KEY (studId) REFERENCES students(id) ON DELETE CASCADE
);