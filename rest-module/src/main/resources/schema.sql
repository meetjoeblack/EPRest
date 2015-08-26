-- drop table messages if exists ;
-- CREATE TABLE  messages (id bigint generated by default as identity (start with 1), message VARCHAR(100));

DROP TABLE employee IF EXISTS;
DROP TABLE department IF EXISTS;

CREATE TABLE department (
  id INTEGER PRIMARY KEY,
  name  VARCHAR(255)
);

CREATE TABLE employee (
  id INTEGER IDENTITY PRIMARY KEY,
  depId integer,
  fio  VARCHAR(255),
  birth DATE,
  salary INTEGER NOT NULL,
  FOREIGN KEY (depId) REFERENCES department(id)
);