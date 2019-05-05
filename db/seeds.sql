USE friend_finder;

INSERT INTO students (name, picture_link) VALUES ('Kristen Daves','../assets/images/KristenDaves.jpg');
INSERT INTO students (name, picture_link) VALUES ('Jonathan Kier','../assets/images/JonathanKier.jpg');
INSERT INTO students (name, picture_link) VALUES ('Denise Bergen','../assets/images/DeniseBergen.jpg');
INSERT INTO students (name, picture_link) VALUES ('Dave Agraz','../assets/images/DaveAgraz.jpg');
INSERT INTO students (name, picture_link) VALUES ('Erica Bohler','../assets/images/EricaBohler.jpg');
INSERT INTO students (name, picture_link) VALUES ('Jaime Longa','../assets/images/JaimeLonga.jpg');
INSERT INTO students (name, picture_link) VALUES ('Johnannes Vanbeek','../assets/images/JohnannesVanbeek.jpg');
INSERT INTO students (name, picture_link) VALUES ('Karen Ko','../assets/images/KarenKo.jpg');
INSERT INTO students (name, picture_link) VALUES ('Kerry Carnahan','../assets/images/KerryCarnahan.jpg');
INSERT INTO students (name, picture_link) VALUES ('Meghan Mackay','../assets/images/MeghanMackay.jpg');
INSERT INTO students (name, picture_link) VALUES ('Theo Stewart Stand','../assets/images/TheoStewartStand.jpg');
INSERT INTO students (name, picture_link) VALUES ('Evelyn Ferries','../assets/images/KerryCarnahan.jpg');

INSERT INTO questions(question, question_type, category) VALUES ('What kind of book might you take with you on a trip if you had room to pack just one?', 'multiple choice', 'intro');
INSERT INTO answers(question_id, choice, answer_text) VALUES (1, 1, 'Poetry');
INSERT INTO answers(question_id, choice, answer_text) VALUES (1, 2, 'A novel');
INSERT INTO answers(question_id, choice, answer_text) VALUES (1, 3, 'Short stories');
INSERT INTO answers(question_id, choice, answer_text) VALUES (1, 4, 'Enlightenment reading');
INSERT INTO answers(question_id, choice, answer_text) VALUES (1, 5, 'History');
INSERT INTO answers(question_id, choice, answer_text) VALUES (1, 6, 'Scripture');

INSERT INTO questions(question, question_type, category) VALUES ('What might be your favorite natural dwelling landscape?', 'multiple choice', 'intro');
INSERT INTO answers(question_id, choice, answer_text) VALUES (2, 1, 'Coastal town');
INSERT INTO answers(question_id, choice, answer_text) VALUES (2, 2, 'Mountains');
INSERT INTO answers(question_id, choice, answer_text) VALUES (2, 3, 'Forest');
INSERT INTO answers(question_id, choice, answer_text) VALUES (2, 4, 'Desert');
INSERT INTO answers(question_id, choice, answer_text) VALUES (2, 5, 'Urban');

INSERT INTO questions(question, question_type, category) VALUES ('Name your most fun hobby?', 'multiple choice', 'intro');
INSERT INTO answers(question_id, choice, answer_text) VALUES (3, 1, 'Hiking');
INSERT INTO answers(question_id, choice, answer_text) VALUES (3, 2, 'Travel');
INSERT INTO answers(question_id, choice, answer_text) VALUES (3, 3, 'Fitness Activities');
INSERT INTO answers(question_id, choice, answer_text) VALUES (3, 4, 'Arts & Crafts');
INSERT INTO answers(question_id, choice, answer_text) VALUES (3, 5, 'Cooking');

INSERT INTO questions(question, question_type, category) VALUES ('What is your favorite \"special occassion\" kind of food?', 'multiple choice', 'intro');
INSERT INTO answers(question_id, choice, answer_text) VALUES (4, 1, 'Pescatarian or Sushi');
INSERT INTO answers(question_id, choice, answer_text) VALUES (4, 2, 'Vegetarian');
INSERT INTO answers(question_id, choice, answer_text) VALUES (4, 3, 'Trendy American Continental');
INSERT INTO answers(question_id, choice, answer_text) VALUES (4, 4, 'French');
INSERT INTO answers(question_id, choice, answer_text) VALUES (4, 5, 'Mediterranean / Tapas');

INSERT INTO questions(question, question_type, category) VALUES ('What is your favorite pet?', 'multiple choice', 'intro');
INSERT INTO answers(question_id, choice, answer_text) VALUES (5, 1, 'Plant');
INSERT INTO answers(question_id, choice, answer_text) VALUES (5, 2, 'Cat');
INSERT INTO answers(question_id, choice, answer_text) VALUES (5, 3, 'Dog');
INSERT INTO answers(question_id, choice, answer_text) VALUES (5, 4, 'Bird');
INSERT INTO answers(question_id, choice, answer_text) VALUES (5, 5, 'Small mammal');
INSERT INTO answers(question_id, choice, answer_text) VALUES (5, 6, 'Snake');
INSERT INTO answers(question_id, choice, answer_text) VALUES (5, 7, 'Exotic tank fish');

INSERT INTO questions(question, question_type, category) VALUES ('What is your favorite way to spend some time with someone?', 'multiple choice', 'intro');
INSERT INTO answers(question_id, choice, answer_text) VALUES (6, 1, 'Day in the Park');
INSERT INTO answers(question_id, choice, answer_text) VALUES (6, 2, 'Museum exhibit or Movie');
INSERT INTO answers(question_id, choice, answer_text) VALUES (6, 3, 'Day trip or hike');
INSERT INTO answers(question_id, choice, answer_text) VALUES (6, 4, 'Walking tour or shopping');
INSERT INTO answers(question_id, choice, answer_text) VALUES (6, 5, 'Out to eat');

INSERT INTO questions(question, question_type, category) VALUES ('If you could only pick one, what quality might you cherish best or delight in about another person?', 'multiple choice', 'intro');
INSERT INTO answers(question_id, choice, answer_text) VALUES (7, 1, 'Kindness');
INSERT INTO answers(question_id, choice, answer_text) VALUES (7, 2, 'Romance');
INSERT INTO answers(question_id, choice, answer_text) VALUES (7, 3, 'Provides for me');
INSERT INTO answers(question_id, choice, answer_text) VALUES (7, 4, 'Tenderness');
INSERT INTO answers(question_id, choice, answer_text) VALUES (7, 5, 'Humor / Fun');

INSERT INTO questions(question, question_type, category) VALUES ('What nourishes your soul?', 'multiple choice', 'intro');
INSERT INTO answers(question_id, choice, answer_text) VALUES (8, 1, 'Eastern philosophy');
INSERT INTO answers(question_id, choice, answer_text) VALUES (8, 2, 'Western thought / logic');
INSERT INTO answers(question_id, choice, answer_text) VALUES (8, 3, 'Catholic');
INSERT INTO answers(question_id, choice, answer_text) VALUES (8, 4, 'Protestant or Other');
INSERT INTO answers(question_id, choice, answer_text) VALUES (8, 5, 'Muslim');

INSERT INTO questions(question, question_type, category) VALUES ('Ideally, how might you like to spen a rainy day off?', 'multiple choice', 'intro');
INSERT INTO answers(question_id, choice, answer_text) VALUES (9, 1, 'Watching movies');
INSERT INTO answers(question_id, choice, answer_text) VALUES (9, 2, 'Playing board games');
INSERT INTO answers(question_id, choice, answer_text) VALUES (9, 3, 'Reading');
INSERT INTO answers(question_id, choice, answer_text) VALUES (9, 4, 'Surfing the net');
INSERT INTO answers(question_id, choice, answer_text) VALUES (9, 5, 'Arts & Crafts');

INSERT INTO questions(question, question_type, category) VALUES ('What game do you like on rainy days indoors?', 'multiple choice', 'intro');
INSERT INTO answers(question_id, choice, answer_text) VALUES (10, 1,'Cards');
INSERT INTO answers(question_id, choice, answer_text) VALUES (10, 2, 'Chess');
INSERT INTO answers(question_id, choice, answer_text) VALUES (10, 3, 'Dice style games');
INSERT INTO answers(question_id, choice, answer_text) VALUES (10, 4, 'Puzzles');
INSERT INTO answers(question_id, choice, answer_text) VALUES (10, 5, 'Trivia');

INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (1, 1, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (1, 2, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (1, 3, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (1, 4, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (1, 5, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (1, 6, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (1, 7, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (1, 8, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (1, 9, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (1, 10, 5);

INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (2, 1, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (2, 2, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (2, 3, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (2, 4, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (2, 5, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (2, 6, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (2, 7, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (2, 8, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (2, 9, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (2, 10, 1);

INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (3, 1, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (3, 2, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (3, 3, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (3, 4, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (3, 5, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (3, 6, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (3, 7, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (3, 8, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (3, 9, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (3, 10, 4);

INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (4, 1, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (4, 2, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (4, 3, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (4, 4, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (4, 5, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (4, 6, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (4, 7, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (4, 8, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (4, 9, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (4, 10, 1);

INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (5, 1, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (5, 2, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (5, 3, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (5, 4, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (5, 5, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (5, 6, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (5, 7, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (5, 8, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (5, 9 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (5, 10, 4);

INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (6, 1, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (6, 2, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (6, 3, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (6, 4, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (6, 5, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (6, 6, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (6, 7, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (6, 8, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (6, 9, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (6, 10, 4);

INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (7, 1, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (7, 2, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (7, 3, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (7, 4, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (7, 5, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (7, 6, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (7, 7, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (7, 8, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (7, 9, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (7, 10, 2);

INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (8, 1, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (8, 2, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (8, 3, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (8, 4, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (8, 5, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (8, 6, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (8, 7, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (8, 8, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (8, 9, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (8, 10, 4);
 
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (9, 1, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (9, 2, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (9, 3, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (9, 4, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (9, 5, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (9, 6, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (9, 7, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (9, 8, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (9, 9, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (9, 10, 2);

INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (10, 1, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (10, 2, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (10, 3, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (10, 4, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (10, 5, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (10, 6, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (10, 7, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (10, 8, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (10, 9, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (10, 10, 2);

INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (11, 1, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (11, 2, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (11, 3, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (11, 4, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (11, 5, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (11, 6, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (11, 7, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (11, 8, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (11, 9, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (11, 10, 2);

INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (12, 1, 1);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (12, 2, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (12, 3, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (12, 4, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (12, 5, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (12, 6, 5);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (12, 7, 3);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (12, 8, 4);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (12, 9, 2);
INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (12, 10, 2);

SELECT * FROM students;
SELECT * FROM questions;
SELECT * FROM answers;
SELECT * FROM scores;