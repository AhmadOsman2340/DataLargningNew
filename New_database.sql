DROP DATABASE IF EXISTS db;
CREATE DATABASE db;
USE db;

CREATE TABLE administrative_staff (
 id INT NOT NULL,
 name CHAR(50) NOT NULL,
 phone CHAR(10) NOT NULL,
 email CHAR(100) NOT NULL
);

INSERT INTO administrative_staff VALUES ('1', 'Adam', '0778262710', '12tqt@gmail.com');
INSERT INTO administrative_staff VALUES ('2', 'Kristian', '0739826591', 'qwrtw1@yahoo.com');
INSERT INTO administrative_staff VALUES ('3', 'Sara', '0739016182', 'asfbm@yahoo.com');

ALTER TABLE administrative_staff ADD CONSTRAINT PK_administrative_staff PRIMARY KEY (id);


CREATE TABLE instructor (
 id INT NOT NULL,
 name CHAR(20) NOT NULL,
 personal_number  VARCHAR(13) NOT NULL,
 age VARCHAR(2) NOT NULL
);

INSERT INTO instructor VALUES ('1', 'Ebba', '19860919-8222', '36');
INSERT INTO instructor VALUES ('2', 'Emanuel', '19900711-5521', '32');
INSERT INTO instructor VALUES ('3', 'Kristofer', '19770624-7112', '45');

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE instrument (
 id INT NOT NULL,
 instrument_name CHAR(50) NOT NULL,
 instrument_price VARCHAR(5) NOT NULL,
 brands CHAR(50),
 monthly_rent VARCHAR(200) NOT NULL,
 availability boolean NOT NULL
);

INSERT INTO instrument VALUES ('1', 'Piano', '4892', 'Yamaha', '32', 1 );
INSERT INTO instrument VALUES ('2', 'Guitar', '999', 'Gibson', '21', 1 );
INSERT INTO instrument VALUES ('3', 'Violin', '3890', 'Harman', '33', 1 );
INSERT INTO instrument VALUES ('4', 'Drums', '999', 'Shure', '89', 1 );
INSERT INTO instrument VALUES ('5', 'Saxophone', '400', 'Fender', '56', 1 );
INSERT INTO instrument VALUES ('6', 'Flute', '200', 'Steinway', '39', 1 );
INSERT INTO instrument VALUES ('7', 'Cello', '1200', 'Sennheiser', '19', 1 );
INSERT INTO instrument VALUES ('8', 'Clarinet', '799', 'Roland', '36', 1 );
INSERT INTO instrument VALUES ('9', 'Trumpet', '550', 'Kawai', '49', 1 );
INSERT INTO instrument VALUES ('10', 'Harp', '700', 'C.F.Martin&Company', '56', 1 );
INSERT INTO instrument VALUES ('11', 'Rabab', '400', 'Taylor', '78', 1 );
INSERT INTO instrument VALUES ('12', 'Oud', '870', 'Takamine', '50', 1 );

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

INSERT INTO student VALUES ("1", 'Adam','19950204-1249', '25', 'visselmansgatan', 'Stockholm','14224', 'Sima Andersson');
INSERT INTO student VALUES ('2', 'Hanby','19970324-4124', '24', 'hislamansgatan','Stockholm','14224', 'Rafaiel Alcantara');
INSERT INTO student VALUES ('3', 'Eva','19930105-2365', '27', 'idsberggatan', 'Stockholm', '16326', 'Saed Rafi');
INSERT INTO student VALUES ('4', 'Ebba','20010504-3466', '19', 'hedervagen', 'Stockholm', '12315', 'Anders Samy');
INSERT INTO student VALUES ('5', 'Emma','19940204-6556', '26', 'harmonievagen', 'Stockholm', '14567', 'Simon kodo');
INSERT INTO student VALUES ('6', 'Eda', '20050204-2349','15', 'manrsafthamn', 'Stockholm', '14664','IIse lume');
INSERT INTO student VALUES ('7', 'Erik','20080501-6788', '12','bergshamn', 'Stockholm', '16446','Lucas herrera');
INSERT INTO student VALUES ('8', 'Anna','19950904-9091', '25', 'hamnsvagen','Stockholm', '12946', 'Reema mercedes');
INSERT INTO student VALUES ('9', 'Henry','19980112-8586', '22', 'irlandsgatan', 'Stockholm', '13935','Izicaiel bernersson');
INSERT INTO student VALUES ('10', 'Fredrik','20020815-4579', '18', 'salugatan', 'Stockholm','15681',  'Murphy seoul');
INSERT INTO student VALUES ('11', 'Rebecka','20020919-7844', '18', 'idmersgatan', 'Stockholm','61237', 'Blancka izzi');
INSERT INTO student VALUES ('12', 'Daniel', '20031022-3235', '17', 'restonbacken', 'Stockholm','12462', 'Hiam massoud');
INSERT INTO student VALUES ('13', 'Nikolas','20061220-7657', '14', 'stenbackegatan', 'Stockholm', '14782', 'Liam isaksson');
INSERT INTO student VALUES ('14', 'Edmund', '19970217-5259', '23', 'oloufvagen', 'Stockholm', '12452','Murseda isamiel');
INSERT INTO student VALUES ('15', 'Tobias', '20000912-6465', '20', 'asfiuagatan', 'Stockholm','16812', 'Cemal fehmi');
INSERT INTO student VALUES ('16', 'Jesper', '20060212-1787','16','asdaivagen', 'Stockholm', '13575', 'Receb agha');

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE application (
 student_id INT NOT NULL,
 app_id INT NOT NULL,
 app_number VARCHAR(10) NOT NULL,
 skill_level VARCHAR(20) NOT NULL,
 mobile_number INT NOT NULL,
 email VARCHAR(500) NOT NULL
);

INSERT INTO application VALUES ('1', '1', '1', '*', '0733337777', 'juasdi@kjasf.com');
INSERT INTO application VALUES ('2', '2', '2', '*', '0734704747', 'kjkdfb@jkasd.com');
INSERT INTO application VALUES ('3', '3', '3', '*', '0737887777', 'vcknmb@jasshdb.com');
INSERT INTO application VALUES ('4', '4', '4', '**', '0728882323', 'ajshbjc@jaskj.com');
INSERT INTO application VALUES ('5', '5', '5', '**', '0734508898', 'jhsdb@kasj.com');
INSERT INTO application VALUES ('6', '6', '6', '**', '0735559898', 'akjsnd@jsj.com');
INSERT INTO application VALUES ('7', '7', '7', '***','0729927164', 'jkas@kjk.com');
INSERT INTO application VALUES ('8', '8', '8', '***','0726232164', 'lkvv@uuuuq.com');
INSERT INTO application VALUES ('9', '9', '9', '***','0729984711', 'mvcn@qwe.com');
INSERT INTO application VALUES ('10', '10', '10', '***','0729723741', 'irivn@urur.com');

ALTER TABLE application ADD CONSTRAINT PK_application PRIMARY KEY (student_id,app_id);


CREATE TABLE booking (
 id INT NOT NULL,
 student_id INT NOT NULL,
 date DATE,
 time VARCHAR(6) NOT NULL,
 admin_id INT NOT NULL
);

INSERT INTO booking VALUES ('1', '1', '2020-01-04', '08-10', '1');
INSERT INTO booking VALUES ('2', '2', '2020-01-04', '10-12', '1');
INSERT INTO booking VALUES ('3', '3', '2020-01-04', '13-15', '1');
INSERT INTO booking VALUES ('4', '4', '2020-01-04', '16-18', '1');
INSERT INTO booking VALUES ('5', '5', '2020-01-04', '09-11', '1');


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

INSERT INTO individual_lesson VALUES ('1','1','*','Flute','2021-01-22','1','1');
INSERT INTO individual_lesson VALUES ('2','2','*','Flute','2021-01-23','2','2');
INSERT INTO individual_lesson VALUES ('3','2','*','Cello','2021-01-24','3','3');


ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (individual_lesson_id,instructor_id);


CREATE TABLE rented_instrument (
 id INT NOT NULL,
 student_id INT NOT NULL,
 instrument_id INT NOT NULL,
 rental_start DATE NOT NULL,
 rental_end CHAR(10),
 is_terminated boolean NOT NULL
);

INSERT INTO rented_instrument VALUES ('1','1','1','2021-02-26','2021-11-25','1');
INSERT INTO rented_instrument VALUES ('2','2','2','2021-05-18','2022-01-25','1');
INSERT INTO rented_instrument VALUES ('3','3','3','2021-03-27','2022-02-01','1');
INSERT INTO rented_instrument VALUES ('4','4','4','2021-11-11','2021-12-29','1');


ALTER TABLE rented_instrument ADD CONSTRAINT PK_rented_instrument PRIMARY KEY (id,student_id);


CREATE TABLE scheduled_lesson (
 lesson_id INT NOT NULL,
 instructor_id INT NOT NULL,
 lesson_type VARCHAR(10) NOT NULL,
 student_id INT NOT NULL
);
INSERT INTO scheduled_lesson VALUES ('1','1','rock','4');
INSERT INTO scheduled_lesson VALUES ('2','2','Guitar','6');
INSERT INTO scheduled_lesson VALUES ('3','1','Piano','5');
INSERT INTO scheduled_lesson VALUES ('4','1','Drums','4');
INSERT INTO scheduled_lesson VALUES ('5','2','Violin','3');
INSERT INTO scheduled_lesson VALUES ('6','3','metal','1');
INSERT INTO scheduled_lesson VALUES ('7','2','jazz','6');
INSERT INTO scheduled_lesson VALUES ('8','1','rock','3');

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

INSERT INTO ensembles VALUES ('1','1','1','rock','16','10','**','2021-08-01');
INSERT INTO ensembles VALUES ('2','7','2','jazz','16','10','**','2021-08-02');
INSERT INTO ensembles VALUES ('3','6','3','metal','16','10','*','2021-09-01');
INSERT INTO ensembles VALUES ('4','8','1','rock','16','10','*','2021-09-02');

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

INSERT INTO group_lesson VALUES ('1','3','1','Piano','16','10','**','2021-10-01');
INSERT INTO group_lesson VALUES ('2','5','2','Violin','16','10','**','2021-10-03');
INSERT INTO group_lesson VALUES ('3','4','1','Drums','16','10','*','2021-11-13');
INSERT INTO group_lesson VALUES ('4','2','2','Guitar','16','10','***','2021-11-14');

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (group_lesson_id,lesson_id,instructor_id);


CREATE TABLE payment (
 student_id INT NOT NULL,
 payment_id INT NOT NULL,
 total_price VARCHAR(50) NOT NULL,
 date DATE NOT NULL,
 instructor_id INT,
 rental_instrument_id INT NOT NULL
);

INSERT INTO payment VALUES ('1', '1','1400', '2021-01-25', '1', '1');
INSERT INTO payment VALUES ('2', '2','1400', '2021-01-25', '2', '2');
INSERT INTO payment VALUES ('3', '3','1400', '2021-01-25', '3', '3');
INSERT INTO payment VALUES ('4', '4','1800', '2021-01-25', '1', '4');

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


