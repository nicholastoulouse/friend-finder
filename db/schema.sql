DROP DATABASE IF EXISTS friend_finder;
CREATE DATABASE friend_finder;

USE friend_finder;

CREATE TABLE IF NOT EXISTS students (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    picture_link VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS questions (
    id INT NOT NULL AUTO_INCREMENT,
    CONSTRAINT id_Ck CHECK (id BETWEEN 1 AND 11),
    question VARCHAR(255) NOT NULL,
    question_type VARCHAR(255) DEFAULT 'multiple choice',
    category VARCHAR(255) DEFAULT 'intro', 
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS answers (
    id INT NOT NULL AUTO_INCREMENT,
    question_id INT NOT NULL,
    choice INT NOT NULL,
    CONSTRAINT id_Ck CHECK (choice BETWEEN 1 AND 20),
    answer_text VARCHAR(255) NOT NULL,
    FOREIGN KEY (question_id) REFERENCES questions(id),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS scores (
    id INT NOT NULL AUTO_INCREMENT,
    student_id INT NOT NULL,
    question_id INT NOT NULL,
    answerchoice_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (question_id) REFERENCES questions(id),
    FOREIGN KEY (answerchoice_id) REFERENCES answers(id),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS friends (
    student_a_id INT NOT NULL,
    student_b_id INT NOT NULL,
    FOREIGN KEY (student_a_id) REFERENCES students(id),
    FOREIGN KEY (student_b_id) REFERENCES students(id)
);
-- - take the persons answers
-- - subtract that from other peoples answers
-- - take the absolute value of that
-- - yuo sum that up
-- - you sort that asc order based on the lowest sum
-- - the ones with the lowest sums are the most likely matches
