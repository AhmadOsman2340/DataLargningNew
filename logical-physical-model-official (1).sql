CREATE TABLE administrative_staff (
 id INT NOT NULL,
 name CHAR(50) NOT NULL,
 phone CHAR(10) NOT NULL,
 email CHAR(100) NOT NULL
);

ALTER TABLE administrative_staff ADD CONSTRAINT PK_administrative_staff PRIMARY KEY (id);


CREATE TABLE instructor (
 id INT NOT NULL,
 name CHAR(20) NOT NULL,
 personal_number  VARCHAR(13) NOT NULL,
 age VARCHAR(2) NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE instrument (
 id INT NOT NULL,
 instrument_name CHAR(50) NOT NULL,
 instrument_price VARCHAR(5) NOT NULL,
 brands CHAR(50),
 monthly_rent VARCHAR(200) NOT NULL,
 availability  CHAR(5) DEFAULT 'Boolean' NOT NULL
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (id);


CREATE TABLE student (
 id INT NOT NULL,
 name CHAR(50) NOT NULL,
 personal_number  VARCHAR(13) NOT NULL,
 age VARCHAR(2) NOT NULL,
 street VARCHAR(100) NOT NULL,
 city CHAR(50) NOT NULL,
 zip_code CHAR(10) NOT NULL,
 guardian_info CHAR(100) NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE application (
 student_id INT NOT NULL,
 app_id INT NOT NULL,
 app_number VARCHAR(10) NOT NULL,
 skill_level VARCHAR(20) NOT NULL,
 mobile_number INT NOT NULL,
 email VARCHAR(500) NOT NULL
);

ALTER TABLE application ADD CONSTRAINT PK_application PRIMARY KEY (student_id,app_id);


CREATE TABLE booking (
 id INT NOT NULL,
 student_id INT NOT NULL,
 date DATE,
 time VARCHAR(6) NOT NULL,
 admin_id INT NOT NULL
);

ALTER TABLE booking ADD CONSTRAINT PK_booking PRIMARY KEY (id,student_id);


CREATE TABLE individual_lesson (
 individual_lesson_id INT NOT NULL,
 instructor_id INT NOT NULL,
 level VARCHAR(12) NOT NULL,
 instrument CHAR(50) NOT NULL,
 date DATE NOT NULL,
 booking_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (individual_lesson_id,instructor_id);


CREATE TABLE rented_instrument (
 id INT NOT NULL,
 student_id INT NOT NULL,
 instrument_id INT NOT NULL,
 rental_start DATE NOT NULL,
 rental_end CHAR(10),
 is_terminated CHAR(5) DEFAULT 'false (boolean)' NOT NULL
);

ALTER TABLE rented_instrument ADD CONSTRAINT PK_rented_instrument PRIMARY KEY (id,student_id);


CREATE TABLE scheduled_lesson (
 lesson_id INT NOT NULL,
 instructor_id INT NOT NULL,
 lesson_type VARCHAR(10) NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE scheduled_lesson ADD CONSTRAINT PK_scheduled_lesson PRIMARY KEY (lesson_id,instructor_id);


CREATE TABLE ensembles (
 ensembles_id INT NOT NULL,
 lesson_id INT NOT NULL,
 instructor_id INT NOT NULL,
 genre VARCHAR(20) NOT NULL,
 max_students INT,
 available_places INT NOT NULL,
 level VARCHAR(12) NOT NULL,
 date DATE NOT NULL
);

ALTER TABLE ensembles ADD CONSTRAINT PK_ensembles PRIMARY KEY (ensembles_id,lesson_id,instructor_id);


CREATE TABLE group_lesson (
 group_lesson_id INT NOT NULL,
 lesson_id INT NOT NULL,
 instructor_id INT NOT NULL,
 instrument CHAR(50) NOT NULL,
 max_students INT NOT NULL,
 available_places INT NOT NULL,
 level VARCHAR(12) NOT NULL,
 date DATE NOT NULL
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (group_lesson_id,lesson_id,instructor_id);


CREATE TABLE payment (
 student_id INT NOT NULL,
 payment_id INT NOT NULL,
 total_price VARCHAR(50) NOT NULL,
 date DATE NOT NULL,
 instructor_id INT,
 rental_instrument_id INT NOT NULL
);

ALTER TABLE payment ADD CONSTRAINT PK_payment PRIMARY KEY (student_id,payment_id);


ALTER TABLE application ADD CONSTRAINT FK_application_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE booking ADD CONSTRAINT FK_booking_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE booking ADD CONSTRAINT FK_booking_1 FOREIGN KEY (admin_id) REFERENCES administrative_staff (id);


ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_1 FOREIGN KEY (booking_id,student_id) REFERENCES booking (id,student_id);


ALTER TABLE rented_instrument ADD CONSTRAINT FK_rented_instrument_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE rented_instrument ADD CONSTRAINT FK_rented_instrument_1 FOREIGN KEY (instrument_id) REFERENCES instrument (id);


ALTER TABLE scheduled_lesson ADD CONSTRAINT FK_scheduled_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);
ALTER TABLE scheduled_lesson ADD CONSTRAINT FK_scheduled_lesson_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE ensembles ADD CONSTRAINT FK_ensembles_0 FOREIGN KEY (lesson_id,instructor_id) REFERENCES scheduled_lesson (lesson_id,instructor_id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (lesson_id,instructor_id) REFERENCES scheduled_lesson (lesson_id,instructor_id);


ALTER TABLE payment ADD CONSTRAINT FK_payment_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE payment ADD CONSTRAINT FK_payment_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);
ALTER TABLE payment ADD CONSTRAINT FK_payment_2 FOREIGN KEY (rental_instrument_id,student_id) REFERENCES rented_instrument (id,student_id);


