CREATE TABLE  IF NOT EXISTS Users

    /*Пользователи*/
(

    id  INTEGER PRIMARY KEY AUTOINCREMENT,

    first_last TEXT NOT NULL,
    /*Имя и фамилия */

    email TEXT NOT NULL UNIQUE,

    phone  INT NOT NULL UNIQUE,

    rating INT ,

    lessons_id INTEGER,

    password TEXT NOT NULL UNIQUE,

    FOREIGN KEY (lessons_id) REFERENCES Lesson(id)



);



CREATE TABLE IF NOT EXISTS Lesson

    /*Курсы*/

(

    id    INTEGER PRIMARY KEY AUTOINCREMENT,

    name TEXT NOT NULL,

    price INT ,

    teacher_id TEXT,

    FOREIGN KEY (teacher_id) REFERENCES Teachers(id)


);



CREATE TABLE IF NOT EXISTS Teachers

    /*Преподватели*/

(

    id    INTEGER PRIMARY KEY AUTOINCREMENT,

    first_last  TEXT NOT NULL ,

    password TEXT NOT NULL UNIQUE,

    lesson_id INT  NOT NULL,

    FOREIGN KEY (lesson_id) REFERENCES Lesson(id)


);



CREATE TABLE IF NOT EXISTS Transactions

    /*Покупки*/

(

    id        INTEGER PRIMARY KEY AUTOINCREMENT,

    user_id   INT NOT NULL,

    lesson_id INT NOT NULL,

    date      DATE NOT NULL,

    card_id int,



    FOREIGN KEY (user_id) REFERENCES Users(id),

    FOREIGN KEY (lesson_id) REFERENCES Lesson(id),

    FOREIGN KEY (card_id) REFERENCES Cards(id)


);



CREATE TABLE IF NOT EXISTS Feedback

    /*Отзывы*/

(

    id        INTEGER PRIMARY KEY AUTOINCREMENT,

    user_id   INT  NOT NULL,

    lesson_id INT  NOT NULL,

    text      TEXT NOT NULL,

    rating    INT  NOT NULL,

    FOREIGN KEY (user_id) REFERENCES Users(id),

    FOREIGN KEY (lesson_id) REFERENCES Lesson(id)

);



CREATE TABLE IF NOT EXISTS Administrator

    /*Админы*/
(

    id    INTEGER PRIMARY KEY AUTOINCREMENT,

    name  TEXT NOT NULL,

    password TEXT NOT NULL UNIQUE ,

    codeworde TEXT NOT NULL UNIQUE
    /*Кодовое слово*/

);

CREATE TABLE IF NOT EXISTS cards

    /*Банковские реквизиты*/
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    user_id INTEGER NOT NULL,

    cvc INTEGER NOT NULL UNIQUE,

    num INT NOT NULL UNIQUE ,


    FOREIGN KEY (user_id) REFERENCES Users(id)

);
