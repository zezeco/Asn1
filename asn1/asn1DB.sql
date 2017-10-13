-- create and select the database
DROP DATABASE IF EXISTS searchDB;
CREATE DATABASE searchDB;
USE searchDB;

-- create the tables for the database
CREATE TABLE classes (
  term_ID           INT            NOT NULL,
  class_ID          INT            NOT NULL,
  semester_ID       INT            NOT NULL,
  semester          VARCHAR(15)    NOT NULL,
  major             VARCHAR(20)    NOT NULL,
  PRIMARY KEY (term_ID),
  UNIQUE INDEX semesterID (term_ID)
);

CREATE TABLE schedules (
  CRN               VARCHAR(5)     NOT NULL,
  class_abr         VARCHAR(5)     NOT NULL,
  class_ID          INT            NOT NULL,
  semester_ID       INT            NOT NULL,
  teacher_ID        INT            NOT NULL,
  class_Name        VARCHAR(30)    NOT NULL,
  section           INT            NOT NULL,
  days              VARCHAR(4)     NOT NULL,
  time              VARCHAR(20)    NOT NULL,
  location          VARCHAR(25)    NOT NULL,
  credits           INT            NOT NULL,
  class_Level       VARCHAR(05)    NOT NULL,
  description       VARCHAR(550)   NOT NULL,
  PRIMARY KEY (CRN),
  INDEX classID (CRN)
);

CREATE TABLE teachers (
  teacher_ID        INT            NOT NULL,
  first_Name        VARCHAR(20)    NOT NULL,
  last_Name         VARCHAR(20)    NOT NULL,
  PRIMARY KEY (teacher_ID), 
  INDEX teacherID (teacher_ID)
);

-- Insert data into the tables
INSERT INTO classes (term_ID, class_ID, semester_ID, semester, major) VALUES
(1, 1, 1, 'Spring', 'Computer Science'),
(2, 2, 1, 'Spring', 'Math'),
(3, 3, 1, 'Spring', 'English'),
(4, 1, 2, 'Fall', 'Computer Science'),
(5, 4, 2, 'Fall', 'Art'),
(6, 5, 2, 'Fall', 'Biology'),
(7, 1, 3, 'Summer', 'Computer Science'),
(8, 6, 3, 'Summer', 'Chemistry'),
(9, 7, 3, 'Summer', 'Theatre');

INSERT INTO schedules (CRN, class_abr, class_ID, semester_ID, teacher_ID, class_Name, section, days, time, location, credits, class_Level, description) VALUES
('20279', 'CPSC', 1, 1, 1, 'intro into information tech', 1, 'T', '07:30 PM - 08:45 PM', 'CCT- Ctr for Commerc 409', 3, '1105','This course provides an introduction to computer and information technologies. It discusses the nature of information, computer hardware, software, communications technology, and computer-based information systems. The theory is complemented by practical work aimed at gaining basic proficiency with different types of widely used application software. (Course fee required.)'),
('23351', 'CPSC', 1, 1, 2, 'Computer Science I', 1, 'MWF', '10:00 AM - 10:50 AM', 'CCT- Ctr for Commerc 405', 3, '1301', 'Co-requisite: CPSC 1301L. This course includes an overview of computers and programming; problem solving and algorithm development; simple data types; arithmetic and logic operators; selection structures; repetition structures; text files; arrays (one-and-two-dimensional); procedural abstraction and software design; modular programming (including sub-programs or the equivalent). '),
('20287', 'CPSC', 1, 1, 3, 'Data Structures', 1, 'TR', '04:30 - 05:45 PM', 'CCT- Ctr for Commerc 409', 3, '2108', 'Prerequisite: CPSC 1302 with a grade of "C" or better. This course extends the concepts of primitive data types by teaching the student a set of data structures that pervades both the theoretical and practical domains of computer science.'),
('22451', 'MATH', 2, 1, 4, 'College Algebra', 1, 'TBA', ' ', 'ONLINE', 3, '1111', 'Prerequisite: MATH 0195 or satisfactory Mathematics Placement Test score. This course is a functional approach to algebra that incorporates the use of appropriate technology. Emphasis will be placed on the study of functions, and their graphs, inequalities, and linear, quadratic, piece-wise defined, rational, polynomial, exponential, and logarithmic functions. Appropriate applications will be included. Course is designed to develop algebraic concepts to a level sufficient for the study of calculus. (Course fee required.) '),
('20848', 'MATH', 2, 1, 5, 'Pre-Calculus', 1, 'MWF', '11:40 AM - 12:50 PM', 'Howard Hall 103', 3, '1113', 'Prerequisite: MATH 1111 with a grade of "C" or better or an appropriate math placement score. This course is designed to prepare students for calculus, physics, and related technical subjects. Topics include algebraic and transcendental functions and an intensive study of trigonometric functions. '),
('20834', 'MATH', 2, 1, 6, 'Applied Calculus', 1, 'TR', '11:00 AM - 12:15 PM', 'Arnold Hall 111', 3, '1125', 'Prerequisite: MATH 1111 with a grade of "C" or better, MATH 1113 with a grade of "C" or better, or an appropriate math placement score. Introduction to limits and continuity, differential calculus of algebraic, exponential, and logarithmic functions and integration. Applications in the fields of the behavioral, biological, and managerial sciences are included. (Course fee required.) '),
('21071', 'ENGL', 3, 1, 7, 'English Composition I', 1, 'MW', '04:30 PM - 05:45 PM', 'Howard Hall 105', 3, '1101', 'A composition course focusing on skills required for effective writing in a variety of contexts, with emphasis on exposition, analysis, and argumentation, and also including introductory use of a variety of research skills. A grade of "C" or better is required in this course. (Course fee required.) '),
('20554', 'ENGL', 3, 1, 8, 'English Composition II', 1, 'MWF', '08:00 AM - 08:50 AM', 'RiverCenter- Perfomi 1713', 3, '1102', 'Prerequisite: ENGL 1101 with a grade of C or better. A composition course that develops writing skills beyond the levels of proficiency required by ENGL 1101, that emphasizes interpretation and evaluation, and that incorporates a variety of more advanced research methods. Course will include instruction on documentation/plagiarism and information retrieval. A grade of C or better is required in this course. (Course fee required.) '),
('22603', 'ENGL', 3, 1, 9, 'World Literature I', 1, 'TR', '11:00 AM - 12:15 PM', 'University Hall 248', 3, '2111', 'Prerequisite: ENGL 1102. A survey of important works of world literature from ancient times through the mid-seventeenth century. '),
('80195', 'CPSC', 1, 2, 1, 'Intro to Information Tech', 1, 'R', '01:30 PM - 02:45 PM', 'CCT- Ctr for Commerc 407', 3, '1105', 'This course provides an introduction to computer and information technologies. It discusses the nature of information, computer hardware, software, communications technology, and computer-based information systems. The theory is complemented by practical work aimed at gaining basic proficiency with different types of widely used application software. (Course fee required.) '),
('80196', 'CPSC', 1, 2, 1, 'Intro to Information Tech', 2, 'T', '06:00 PM - 07:15 PM', 'CCT- Ctr for Commerc 407', 3, '1105', 'This course provides an introduction to computer and information technologies. It discusses the nature of information, computer hardware, software, communications technology, and computer-based information systems. The theory is complemented by practical work aimed at gaining basic proficiency with different types of widely used application software. (Course fee required.) '),
('80197', 'CPSC', 1, 2, 3, 'Computer Science II', 1, 'MWF', '10:00 AM - 10:50 AM', 'CCT- Ctr for Commerc 407', 3, '1302', 'Prerequisites: CPSC 1301 and CPSC 1301L with grades of "C" or better. A continuation of CPSC 1301. This course emphasizes programming using object-oriented methods. The fundamentals used in designing, developing and using classes, encapsulation, inheritance mechanisms, polymorphism and dynamic binding. '),
('80534', 'ART', 4, 2, 10, 'Art Appreciation', 1, 'MWF', '03:00 PM - 03:50 PM', 'Stanley Hall 105', 3, '1100', 'A survey of art throughout the ages. Students develop abilities to comprehend and evaluate concepts and issues pertaining to cultural heritage as embodied in the visual arts. (Course fee required.) '),
('80649', 'ART', 4, 2, 10, 'Art Appreciation', 2, 'MWF', '01:00 PM - 01:50 PM', 'Stanley Hall 206', 3, '1100', 'A survey of art throughout the ages. Students develop abilities to comprehend and evaluate concepts and issues pertaining to cultural heritage as embodied in the visual arts. (Course fee required.) '),
('82479', 'ART', 4, 2, 11, 'Intro to History of Art II', 1, 'MW', '10:00 AM - 11:15 AM', 3,'One Arsenal Place, R 114', '2126', 'Introduction to themes and problems in the history of western art from the Renaissance through the 20th century. (Course fee required.) '),
('80309', 'BIOL', 5, 2, 12, 'Capstone Senior Seminar', 1, 'TR', '06:00 PM - 07:15 PM','LeNoir Hall 351', 2, '4795', 'Prerequisites: BIOL 2206K, BIOL 2207K, BIOL 3215K, BIOL 3216K, and BIOL 3217K all with a grade of "C" or better. Students and faculty participate in formal discussions of assigned readings related to biological evolution. '),
('80310', 'BIOL', 5, 2, 12, 'Capstone Senior Seminar', 2, 'MW', '12:00 PM - 01:15 PM','Lenoir Hall 351', 2, '4795', 'Prerequisites: BIOL 2206K, BIOL 2207K, BIOL 3215K, BIOL 3216K, and BIOL 3217K all with a grade of "C" or better. Students and faculty participate in formal discussions of assigned readings related to biological evolution. '),
('80810', 'BIOL', 5, 2, 12, 'Biology Seminar Series', 1, 'F', '12:00 PM - 12:50 PM', 'LeNoir Hall 351', 1, '6795', 'Students and faculty will participate in formal and informal discussions of new research in the various fields of biology and research projects at CSU and with our local, regional and national partners. This course will be repeated for a total of 4 credits with expectations of student presentations of new material (proposal, preliminary data collection and analyses, preparation for thesis or topic paper defense). '),
('50582', 'CPSC', 1, 3, 3, 'Intro to Information Tech', 1, 'MTWR', '06:00 PM - 07:25 PM', 'CCT- Ctr for Commerc 409', 3, '1105', 'This course provides an introduction to computer and information technologies. It discusses the nature of information, computer hardware, software, communications technology, and computer-based information systems. The theory is complemented by practical work aimed at gaining basic proficiency with different types of widely used application software. (Course fee required.) '),
('50581', 'CPSC', 1, 3, 3, 'Intro to Information Tech', 2, 'TBA', '', 'ONLINE', 3, '1105', 'This course provides an introduction to computer and information technologies. It discusses the nature of information, computer hardware, software, communications technology, and computer-based information systems. The theory is complemented by practical work aimed at gaining basic proficiency with different types of widely used application software. (Course fee required.) '),
('50606', 'CPSC', 1, 3, 3, 'Intro to Information Tech', 3, 'TBA', '', 'ONLINE', 3, '1105', 'This course provides an introduction to computer and information technologies. It discusses the nature of information, computer hardware, software, communications technology, and computer-based information systems. The theory is complemented by practical work aimed at gaining basic proficiency with different types of widely used application software. (Course fee required.) '),
('50617', 'CHEM', 6, 3, 13, 'Survey of Chemistry', 1, 'MTWR', '01:00 PM - 02:55 PM', 'Howard Hall 103', 3, '1152', 'Prerequisite: CHEM 1151 and CHEM 1151L or CHEM 1211 and CHEM 1211L with a grade of C or better in each; Co-requisite: CHEM 1152L. Second course in a two-semester sequence covering elementary principles of organic and biochemistry. Topics include hydrocarbons, alcohols, amines, carboxylic acids, amino acids and proteins, enzymes and vitamins, carbohydrates, and nucleic acids. '),
('50199', 'CHEM', 6, 3, 13, 'Survey of Chemistry', 2, 'MTWR', '10:00 PM - 11:55 PM', 'CCT- Ctr for Commerc 206', 3, '1152', 'Prerequisite: CHEM 1151 and CHEM 1151L or CHEM 1211 and CHEM 1211L with a grade of C or better in each; Co-requisite: CHEM 1152L. Second course in a two-semester sequence covering elementary principles of organic and biochemistry. Topics include hydrocarbons, alcohols, amines, carboxylic acids, amino acids and proteins, enzymes and vitamins, carbohydrates, and nucleic acids. '),
('50156', 'CHEM', 6, 3, 13, 'Survey of Chemistry', 3, 'MWF', '01:00 PM - 02:55 PM', 'Howard Hall 103', 3, '1152', 'Prerequisite: CHEM 1151 and CHEM 1151L or CHEM 1211 and CHEM 1211L with a grade of C or better in each; Co-requisite: CHEM 1152L. Second course in a two-semester sequence covering elementary principles of organic and biochemistry. Topics include hydrocarbons, alcohols, amines, carboxylic acids, amino acids and proteins, enzymes and vitamins, carbohydrates, and nucleic acids. '),
('50310', 'THEA', 7, 3, 14, 'Theatre Appreciation', 1, 'MTWR', '08:00 AM - 09:25 AM', 'Stanley Hall 205', 3, '1100', 'A general course in the appreciation of theatre. The use of films, guest lectures, demonstrations, and discussions of theatre of all periods may be included. (Course fee required.) '),
('50891', 'THEA', 7, 3, 14, 'Theatre History/Literature IV', 1, 'TR', '01:30 PM - 05:00 PM', 'One Arsenal Place, R 114', 3, '3178', 'Prerequisite: THEA 1175 and THEA 3175 or THEA 3176. Interdisciplinary examination of dramatic literature and theatre history from a specific genre, area, or movement within contemporary theatre, studied in the context of important cultural trends impacting the topic. '),
('50790', 'THEA', 7, 3, 14, 'Graduate History & Literature', 1, 'TR', '09:00 AM - 12:30 PM', 'One Arsenal Place, R 114', 3, '6107', 'Student must be a graduate or have permission of instructor. Interdisciplinary examination of dramatic literature and theatre history from a specific genre, area, or movement within contemporary theatre, studied in the context of important cultural trends impacting the topic. ');

INSERT INTO teachers (teacher_ID, first_Name, last_Name) VALUES
(1, 'Aurelia', 'Smith'),
(2, 'Janice', 'Canedo'),
(3, 'Vladmir', 'Zanev'),
(4, 'Elizabeth', 'McInnis'),
(5, 'Richard', 'Stephens'),
(6, 'Kitt', 'Lumley'),
(7, 'Mary', 'Dawson'),
(8, 'Tommie', 'Delaney'),
(9, 'James', 'McHenry'),
(10, 'Thomas', 'Mills'),
(11, 'Claire', 'McCoy'),
(12, 'Jennifer', 'Newbrey'),
(13, 'Samuel', 'Abegaz'),
(14, 'Lawrence', 'Dooley');

-- Create a user named mgs_user
GRANT SELECT, INSERT, UPDATE, DELETE
ON *
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';