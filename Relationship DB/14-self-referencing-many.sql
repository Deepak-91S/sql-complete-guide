-- DROP TABLE friends;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(250) NOT NULL
);

CREATE TABLE friends(
    user_id INT REFERENCES users ON DELETE CASCADE,
    CHECK (user_id < friend_id),
    friend_id INT REFERENCES users ON DELETE CASCADE,
    PRIMARY KEY (user_id, friend_id)
);


INSERT INTO users (first_name)
    VALUES ('Max'),('Dhoni'),('Virat');


INSERT INTO friends VALUES (1,2);
