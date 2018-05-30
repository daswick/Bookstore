USE bookstore;

INSERT INTO book VALUES ('978-1284028768', 'Programming and Problem Solving with C++: Comprehensive', 'Dale, Nell', '6th', 2013);
INSERT INTO book VALUES ('978-0495391326', 'Discrete Mathematics with Applications', 'Epp, Susanna ', '4th', 2011);
INSERT INTO book VALUES ('978-0132847377', 'Data Structures & Algorithm Analysis in C++', 'Weiss, Mark ', '4th', 2013);
INSERT INTO book VALUES ('978-0124077263', 'Computer Organization and Design: The Hardware/Software Interface', 'Patterson, David', '5th', 2013);
INSERT INTO book VALUES ('978-0073523323', 'Database System Concepts', 'Silberschatz, Abraham', '6th', 2010);
INSERT INTO book VALUES ('978-0137035151', 'Software Engineering', 'Sommerville, Ian', '9th', 2010);
INSERT INTO book VALUES ('978-0135974445', 'Agile Software Development, Principles, Patterns, and Practices', 'Martin, Robert', '1st', 2002);
INSERT INTO book VALUES ('978-0262033848', 'Introduction to Algorithms', 'Cormen, Thomas', '3rd', 2009);
INSERT INTO book VALUES ('978-0134670959', 'Operating Systems: Internals and Design Principles', 'Stallings, William', '9th', 2017);
INSERT INTO book VALUES ('978-0547167022', 'Calculus', 'Larson, Ron', '9th', 2009);
INSERT INTO book VALUES ('978-0030105678', 'Linear Algebra and Its Applications', 'Strang, Gilbert', '4th', 2006);
INSERT INTO book VALUES ('978-1133109037', 'Differential Equations', 'Blanchard, Paul', '4th', 2011);
INSERT INTO book VALUES ('978-1305657960', 'Contemporary Abstract Algebra', 'Gallian, Joseph', '9th', 2016);
INSERT INTO book VALUES ('978-1305251809', 'Probability and Statistics for Engineering and the Sciences', 'Devore, Jay', '9th', 2015);
INSERT INTO book VALUES ('978-1599941653', 'Learning SAS by Example: A Programmer\'s Guide', 'Cody, Ron', '1st', 2007);
INSERT INTO book VALUES ('978-1305269477', 'An Introduction to Statistical Methods and Data Analysis', 'Ott, Lyman', '7th', 2015);
INSERT INTO book VALUES ('978-0321691699', 'A Second Course in Statistics: Regression Analysis', 'Mendenhall, William', '7th', 2011);
INSERT INTO book VALUES ('978-0470905401', 'Introductory Biostatistics', 'Le, Chap', '2nd', 2016);
INSERT INTO book VALUES ('978-1491910399', 'R for Data Science', 'Wickham, Hadley', '1st', 2017);
INSERT INTO book VALUES ('978-1593276034', 'Python Crash Course', 'Matthes, Eric', '1st', 2015);
INSERT INTO book VALUES ('978-1491957660', 'Python for Data Analysis', 'McKinney, Wes', '2nd', 2017);
INSERT INTO book VALUES ('978-0133128901', 'Introduction to Data Mining', 'Tan, Pang-Ning', '2nd', 2018);
INSERT INTO book VALUES ('978-1107057135', 'Understanding Machine Learning: From Theory to Algorithms', 'Shalev-Shwartz, Shai', '1st', 2014);
INSERT INTO book VALUES ('978-0262035613', 'Deep Learning', 'Goodfellow, Ian', '1st', 2016);
INSERT INTO book VALUES ('000-0000000000', 'NULL', 'NULL', 'NULL', 0);

INSERT INTO professor VALUES (221235, 'George Carlin');
INSERT INTO professor VALUES (239097, 'Brian Wecht');
INSERT INTO professor VALUES (177672, 'Alec Baldwin');
INSERT INTO professor VALUES (291747, 'Anderson Cooper');
INSERT INTO professor VALUES (162228, 'Ryan Stiles');
INSERT INTO professor VALUES (208937, 'James Gosling');
INSERT INTO professor VALUES (179167, 'Bjarne Stroustrup');
INSERT INTO professor VALUES (151633, 'Benjamin Harrison');
INSERT INTO professor VALUES (158965, 'David Blackwell');
INSERT INTO professor VALUES (000000, 'To Be Announced');

INSERT INTO stock VALUES (313.00, 12, 187.80, 9, 61.99, 0, '978-1284028768');
INSERT INTO stock VALUES (320.64, 14, 192.38, 5, 47.99, 2, '978-0495391326');
INSERT INTO stock VALUES (84.33, 9, 50.59, 8, 24.99, 2, '978-0132847377');
INSERT INTO stock VALUES (71.33, 9, 42.79, 8, 20.99, 4, '978-0124077263');
INSERT INTO stock VALUES (164.50, 9, 98.70, 8, 38.99, 4, '978-0073523323');
INSERT INTO stock VALUES (168.33, 2, 100.99, 2, 49.99, 1, '978-0137035151');
INSERT INTO stock VALUES (80.25, 12, 48.15, 1, 18.99, 1, '978-0135974445');
INSERT INTO stock VALUES (138.33, 7, 82.99, 0, 40.99, 4, '978-0262033848');
INSERT INTO stock VALUES (185.00, 7, 111.00, 0, 73.99, 3, '978-0134670959');
INSERT INTO stock VALUES (262.00, 4, 157.19, 3, 51.99, 0, '978-0547167022');
INSERT INTO stock VALUES (215.00, 3, 129.00, 7, 42.99, 0, '978-0030105678');
INSERT INTO stock VALUES (312.00, 9, 187.20, 8, 45.99, 0, '978-1133109037');
INSERT INTO stock VALUES (91.00, 12, 54.60, 0, 35.99, 0, '978-1305657960');
INSERT INTO stock VALUES (379.00, 2, 227.40, 5, 74.99, 2, '978-1305251809');
INSERT INTO stock VALUES (151.66, 12, 90.99, 0, 44.99, 3, '978-1599941653');
INSERT INTO stock VALUES (148.50, 5, 89.10, 9, 34.99, 4, '978-1305269477');
INSERT INTO stock VALUES (310.38, 1, 186.22, 7, 73.99, 3, '978-0321691699');
INSERT INTO stock VALUES (120.50, 7, 72.30, 8, 27.99, 0, '978-0470905401');
INSERT INTO stock VALUES (390.00, 13, 234.00, 9, 45.99, 3, '978-1491910399');
INSERT INTO stock VALUES (243.50, 11, 146.10, 5, 47.99, 3, '978-1593276034');
INSERT INTO stock VALUES (170.50, 4, 102.30, 5, 67.99, 2, '978-1491957660');
INSERT INTO stock VALUES (105.00, 5, 63.00, 1, 41.99, 0, '978-0133128901');
INSERT INTO stock VALUES (117.00, 19, 70.20, 2, 34.99, 4, '978-1107057135');
INSERT INTO stock VALUES (194.33, 4, 116.59, 2, 57.99, 3, '978-0262035613');

INSERT INTO course VALUES ('COMP', 1500, 'Programming Concepts');
INSERT INTO course VALUES ('COMP', 2100, 'Discrete Structures');
INSERT INTO course VALUES ('COMP', 2300, 'Data Structures');
INSERT INTO course VALUES ('COMP', 2600, 'Computer Organization');
INSERT INTO course VALUES ('COMP', 3300, 'Database Systems');
INSERT INTO course VALUES ('COMP', 3500, 'Software Engineering');
INSERT INTO course VALUES ('COMP', 4200, 'Design and Analysis of Algorithms');
INSERT INTO course VALUES ('COMP', 4800, 'Intro to Operating Systems');
INSERT INTO course VALUES ('DASC', 1200, 'Introduction to R');
INSERT INTO course VALUES ('DASC', 1300, 'Introduction to Python');
INSERT INTO course VALUES ('DASC', 2700, 'Data Mining');
INSERT INTO course VALUES ('DASC', 3800, 'Data Visualization');
INSERT INTO course VALUES ('DASC', 4700, 'Machine Learning');
INSERT INTO course VALUES ('MATH', 2000, 'Calculus I');
INSERT INTO course VALUES ('MATH', 2200, 'Calculus II');
INSERT INTO course VALUES ('MATH', 2400, 'Calculus III');
INSERT INTO course VALUES ('MATH', 3200, 'Linear Algebra');
INSERT INTO course VALUES ('MATH', 3400, 'Differential Equations');
INSERT INTO course VALUES ('MATH', 3600, 'Theory of Numbers');
INSERT INTO course VALUES ('MATH', 4300, 'Introduction to Modern Algebra');
INSERT INTO course VALUES ('MATH', 4500, 'Introduction to Graph Theory');
INSERT INTO course VALUES ('STAT', 1700, 'Probability and Statistics for Engineers 1');
INSERT INTO course VALUES ('STAT', 1800, 'Probability and Statistics for Engineers 2');
INSERT INTO course VALUES ('STAT', 2500, 'Statistical Programming with SAS');
INSERT INTO course VALUES ('STAT', 3700, 'Statistical Methods');
INSERT INTO course VALUES ('STAT', 4400, 'Introduction to Regression Analysis');
INSERT INTO course VALUES ('STAT', 4900, 'Introduction to Biostatistics');

INSERT INTO offering VALUES (13337, 'Spring 2018', 1, 'COMP', '1500', 221235);
INSERT INTO offering VALUES (10416, 'Spring 2018', 2, 'COMP', '1500', 179167);
INSERT INTO offering VALUES (10937, 'Spring 2018', 1, 'COMP', '2100', 221235);
INSERT INTO offering VALUES (14897, 'Spring 2018', 2, 'COMP', '2100', 208937);
INSERT INTO offering VALUES (11246, 'Spring 2018', 1, 'COMP', '2300', 221235);
INSERT INTO offering VALUES (13465, 'Spring 2018', 1, 'COMP', '2600', 179167);
INSERT INTO offering VALUES (18991, 'Spring 2018', 1, 'COMP', '3300', 208937);
INSERT INTO offering VALUES (19134, 'Spring 2018', 1, 'DASC', '1200', 239097);
INSERT INTO offering VALUES (13950, 'Spring 2018', 1, 'DASC', '2700', 162228);
INSERT INTO offering VALUES (16457, 'Spring 2018', 1, 'DASC', '4700', 239097);
INSERT INTO offering VALUES (17460, 'Spring 2018', 1, 'MATH', '2000', 177672);
INSERT INTO offering VALUES (15386, 'Spring 2018', 2, 'MATH', '2000', 291747);
INSERT INTO offering VALUES (19042, 'Spring 2018', 1, 'MATH', '2200', 177672);
INSERT INTO offering VALUES (14829, 'Spring 2018', 1, 'MATH', '3200', 291747);
INSERT INTO offering VALUES (18566, 'Spring 2018', 1, 'MATH', '3600', 151633);
INSERT INTO offering VALUES (17180, 'Spring 2018', 1, 'MATH', '4300', 151633);
INSERT INTO offering VALUES (15949, 'Spring 2018', 1, 'STAT', '1800', 158965);
INSERT INTO offering VALUES (14145, 'Spring 2018', 1, 'STAT', '2500', 162228);
INSERT INTO offering VALUES (13789, 'Spring 2018', 1, 'STAT', '4400', 158965);
INSERT INTO offering VALUES (25914, 'Summer 2018', 1, 'COMP', '1500', 179167);
INSERT INTO offering VALUES (21928, 'Summer 2018', 1, 'COMP', '2100', 221235);
INSERT INTO offering VALUES (21094, 'Summer 2018', 1, 'MATH', '2000', 177672);
INSERT INTO offering VALUES (27794, 'Summer 2018', 1, 'MATH', '3200', 291747);
INSERT INTO offering VALUES (27941, 'Summer 2018', 1, 'STAT', '2500', 158965);
INSERT INTO offering VALUES (33739, 'Fall 2018', 1, 'COMP', '1500', 179167);
INSERT INTO offering VALUES (38015, 'Fall 2018', 2, 'COMP', '1500', 221235);
INSERT INTO offering VALUES (32253, 'Fall 2018', 1, 'COMP', '2100', 151633);
INSERT INTO offering VALUES (35638, 'Fall 2018', 2, 'COMP', '2100', 208937);
INSERT INTO offering VALUES (36762, 'Fall 2018', 1, 'COMP', '2300', 221235);
INSERT INTO offering VALUES (31639, 'Fall 2018', 1, 'COMP', '3500', 208937);
INSERT INTO offering VALUES (32679, 'Fall 2018', 1, 'COMP', '4200', 208937);
INSERT INTO offering VALUES (36142, 'Fall 2018', 1, 'COMP', '4800', 179167);
INSERT INTO offering VALUES (32209, 'Fall 2018', 1, 'DASC', '1200', 162228);
INSERT INTO offering VALUES (31838, 'Fall 2018', 1, 'DASC', '1300', 239097);
INSERT INTO offering VALUES (34872, 'Fall 2018', 1, 'DASC', '3800', 239097);
INSERT INTO offering VALUES (32314, 'Fall 2018', 1, 'MATH', '2000', 177672);
INSERT INTO offering VALUES (35985, 'Fall 2018', 2, 'MATH', '2000', 291747);
INSERT INTO offering VALUES (30485, 'Fall 2018', 1, 'MATH', '2400', 177672);
INSERT INTO offering VALUES (31411, 'Fall 2018', 1, 'MATH', '3400', 291747);
INSERT INTO offering VALUES (37336, 'Fall 2018', 1, 'MATH', '4500', 151633);
INSERT INTO offering VALUES (36024, 'Fall 2018', 1, 'STAT', '1700', 158965);
INSERT INTO offering VALUES (31820, 'Fall 2018', 1, 'STAT', '2500', 162228);
INSERT INTO offering VALUES (30866, 'Fall 2018', 1, 'STAT', '3700', 158965);
INSERT INTO offering VALUES (39230, 'Fall 2018', 1, 'STAT', '4900', 158965);

INSERT INTO course_books VALUES (13337, '978-1284028768');
INSERT INTO course_books VALUES (10416, '978-1284028768');
INSERT INTO course_books VALUES (10937, '978-0495391326');
INSERT INTO course_books VALUES (14897, '978-0495391326');
INSERT INTO course_books VALUES (11246, '978-0132847377');
INSERT INTO course_books VALUES (13465, '978-0124077263');
INSERT INTO course_books VALUES (18991, '978-0073523323');
INSERT INTO course_books VALUES (19134, '978-1491910399');
INSERT INTO course_books VALUES (13950, '978-0133128901');
INSERT INTO course_books VALUES (16457, '978-1107057135');
INSERT INTO course_books VALUES (16457, '978-0262035613');
INSERT INTO course_books VALUES (17460, '978-0547167022');
INSERT INTO course_books VALUES (15386, '978-0547167022');
INSERT INTO course_books VALUES (19042, '978-0547167022');
INSERT INTO course_books VALUES (14829, '978-0030105678');
INSERT INTO course_books VALUES (18566, '000-0000000000');
INSERT INTO course_books VALUES (17180, '978-1305657960');
INSERT INTO course_books VALUES (15949, '978-1305251809');
INSERT INTO course_books VALUES (14145, '978-1599941653');
INSERT INTO course_books VALUES (13789, '978-0321691699');
INSERT INTO course_books VALUES (25914, '978-1284028768');
INSERT INTO course_books VALUES (21928, '978-0495391326');
INSERT INTO course_books VALUES (25461, '978-1491910399');
INSERT INTO course_books VALUES (21094, '978-0547167022');
INSERT INTO course_books VALUES (27794, '978-0030105678');
INSERT INTO course_books VALUES (27941, '978-1599941653');
INSERT INTO course_books VALUES (33739, '978-1284028768');
INSERT INTO course_books VALUES (38015, '978-1284028768');
INSERT INTO course_books VALUES (32253, '978-0495391326');
INSERT INTO course_books VALUES (35638, '978-0495391326');
INSERT INTO course_books VALUES (36762, '978-0132847377');
INSERT INTO course_books VALUES (31639, '978-0137035151');
INSERT INTO course_books VALUES (31639, '978-0135974445');
INSERT INTO course_books VALUES (32679, '978-0262033848');
INSERT INTO course_books VALUES (36142, '978-0134670959');
INSERT INTO course_books VALUES (32209, '978-1491910399');
INSERT INTO course_books VALUES (31838, '978-1593276034');
INSERT INTO course_books VALUES (31838, '978-1491957660');
INSERT INTO course_books VALUES (34872, '000-0000000000');
INSERT INTO course_books VALUES (32314, '978-0547167022');
INSERT INTO course_books VALUES (35985, '978-0547167022');
INSERT INTO course_books VALUES (30485, '978-0547167022');
INSERT INTO course_books VALUES (31411, '978-1133109037');
INSERT INTO course_books VALUES (37336, '000-0000000000');
INSERT INTO course_books VALUES (36024, '978-1305251809');
INSERT INTO course_books VALUES (31820, '978-1599941653');
INSERT INTO course_books VALUES (30866, '978-1305269477');
INSERT INTO course_books VALUES (39230, '978-0470905401');