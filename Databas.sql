CREATE TABLE  IF NOT EXISTS Users

(

    id  INTEGER PRIMARY KEY AUTOINCREMENT,

    first_last TEXT NOT NULL,
    /*Имя и фамилия */

    email TEXT NOT NULL UNIQUE,

    phone  INT NOT NULL UNIQUE,

    rating INT ,

    lessons TEXT,

    password TEXT,

    FOREIGN KEY (lessons) REFERENCES Lesson(id)



);



CREATE TABLE IF NOT EXISTS Lesson

(

    id    INTEGER PRIMARY KEY AUTOINCREMENT,

    name TEXT NOT NULL,

    price INT NOT NULL,

    teacher_id TEXT,

    FOREIGN KEY (teacher_id) REFERENCES Teachers(id)


);



CREATE TABLE IF NOT EXISTS Teachers

(

    id    INTEGER PRIMARY KEY AUTOINCREMENT,

    name  TEXT NOT NULL ,

    password TEXT NOT NULL,

    lesson_id INT  NOT NULL,

    FOREIGN KEY (lesson_id) REFERENCES Lesson(id)


);



CREATE TABLE IF NOT EXISTS Transactions

(

    id        INTEGER PRIMARY KEY AUTOINCREMENT,

    user_id   INT NOT NULL,

    lesson_id INT NOT NULL,

    date      DATE NOT NULL,

    FOREIGN KEY (user_id) REFERENCES Users(id),

    FOREIGN KEY (lesson_id) REFERENCES Lesson(id)


);



CREATE TABLE IF NOT EXISTS Feedback

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
(

    id    INTEGER PRIMARY KEY AUTOINCREMENT,

    name  TEXT NOT NULL,

    password TEXT NOT NULL,

    secword TEXT NOT NULL


)

