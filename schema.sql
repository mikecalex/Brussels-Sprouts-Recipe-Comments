
CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  title varchar(500) NOT NULL,
  instruction varchar(1000),
  ingredients varchar(500)
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  name varchar(250) NOT NULL,
  comment varchar(1000) NOT NULL
);

CREATE TABLE join_table (
  recipe_id INT REFERENCES recipes(id),
  comment_id INT REFERENCES comments(id)
);
