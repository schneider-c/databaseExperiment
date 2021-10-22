CREATE TABLE xsxk.dbo.department
(
	deptno char(4) PRIMARY KEY,
	deptname VARCHAR(20) UNIQUE,
)
INSERT INTO xsxk.dbo.department VALUES ('1','CS');
INSERT INTO xsxk.dbo.department VALUES ('2','IS');
INSERT INTO xsxk.dbo.department VALUES ('3','MA');

CREATE TABLE xsxk.dbo.student

(
	sno char(8) PRIMARY KEY,
	sname varchar(10) NOT NULL,
	ssex char(2),
	sbirthday date,
	sdept char(4) FOREIGN KEY REFERENCES department(deptno),
	class char(1),
)
INSERT INTO xsxk.dbo.student VALUES ('20200101','ALPHA','M','2000.01.01','1','1');
INSERT INTO xsxk.dbo.student VALUES ('20200102','BROVE','F','2000.01.02','2','2');
INSERT INTO xsxk.dbo.student VALUES ('20200103','CHARLIE','M','2000.01.03','1','3');
INSERT INTO xsxk.dbo.student VALUES ('20200104','DELTA','F','2000.01.04','2','4');
SELECT * FROM STUDENT;



CREATE TABLE xsxk.dbo.teacher

(
	tno char(4) PRIMARY KEY,
	tname varchar(10) NOT NULL,
	tsex char(2),
	tbirthday date,
	tdept char(4) FOREIGN KEY REFERENCES department(deptno),
	title varchar(10),
	salary char(5),
)
INSERT INTO xsxk.dbo.teacher VALUES ('0001','ECHO','M','1980.01.01','1','PROFESSOR','8000');
INSERT INTO xsxk.dbo.teacher VALUES ('0002','FOXTROT','F','1980.02.02','2','PROFESSOR','8000');
INSERT INTO xsxk.dbo.teacher VALUES ('0003','GOLF','M','1980.03.03','1','PROFESSOR','8000');
INSERT INTO xsxk.dbo.teacher VALUES ('0004','HOTEL','F','1980.04.04','3','PROFESSOR','8000');
SELECT * FROM teacher;

CREATE TABLE xsxk.dbo.course
(
	cno char(10) PRIMARY KEY,
	cname char(20) NOT NULL,
	cpno char(10),
	credit tinyint,
	tno char(4),
	FOREIGN KEY (cpno) REFERENCES course(cno),
	FOREIGN KEY (tno) REFERENCES teacher(tno),
)
INSERT INTO xsxk.dbo.course VALUES ('1','INDIA','1','2','0001');
INSERT INTO xsxk.dbo.course VALUES ('2','JULIET','1','2','0002');
INSERT INTO xsxk.dbo.course VALUES ('3','KILO','2','3','0003');
SELECT * FROM course


CREATE TABLE xsxk.dbo.sc
(
	cno char(10),
	sno char(8),
	score tinyint,
	PRIMARY KEY (sno,cno),
	FOREIGN KEY (cno) REFERENCES course(cno),
	FOREIGN KEY (sno) REFERENCES student(sno),
)
INSERT INTO xsxk.dbo.sc VALUES ('1','20200101','100');
INSERT INTO xsxk.dbo.sc VALUES ('2','20200101','95');
INSERT INTO xsxk.dbo.sc VALUES ('3','20200102','93');

SELECT * FROM sc

ALTER TABLE student ADD phone char(13)
ALTER TABLE student ADD sage char(2)

ALTER TABLE student ALTER COLUMN phone varchar(16)
ALTER TABLE student DROP COLUMN sage
