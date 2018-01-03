--插入学生语句
INSERT INTO student VALUES(1,	'甲',	15,	'男')
INSERT INTO student VALUES(2,	'乙',	16,	'男')
INSERT INTO student VALUES(3,	'丙',	17,	'男')
INSERT INTO student VALUES(4,	'丁',	18,	'男')
INSERT INTO student VALUES(5,	'戊',	19,	'女')
INSERT INTO student VALUES(6,	'己',	15, '女')
INSERT INTO student VALUES(7,	'庚',	21,	'女')
INSERT INTO student VALUES(8,	'辛',	22,	'女')
INSERT INTO student VALUES(9,	'壬',   23,	'女')
INSERT INTO student VALUES(10,	'癸',	24,	'女')
SELECT*FROM student
 
--插入教师语句
INSERT INTO teacher VALUES(1,'李老师')
INSERT INTO teacher VALUES(2,'王老师')
INSERT INTO teacher VALUES(3,'明老师')
INSERT INTO teacher VALUES(4,'秦老师')
INSERT INTO teacher VALUES(5,'李老师')
INSERT INTO teacher VALUES(6,'朱老师')
INSERT INTO teacher VALUES(7,'马老师')
INSERT INTO teacher VALUES(8,'胡老师')
INSERT INTO teacher VALUES(9,'张老师')
INSERT INTO teacher VALUES(10,'李老师')
SELECT *FROM teacher


--插入课程语句
INSERT INTO course VALUES(1,'语文',3)
INSERT INTO course VALUES(2,'政治',3)
INSERT INTO course VALUES(3,'历史',5)
INSERT INTO course VALUES(4,'计算机',3)
INSERT INTO course VALUES(5,'数学',2)
INSERT INTO course VALUES(6,'英语',1)
INSERT INTO course VALUES(4,'语文',4)
INSERT INTO course VALUES(4,'思修',3)
INSERT INTO course VALUES(7,'数据库',1)
INSERT INTO course VALUES(5,'自然',3)
SELECT *FROM course

--插入成绩语句
INSERT INTO sc VALUES('1','2',85)
INSERT INTO sc VALUES('1','3',80)
INSERT INTO sc VALUES('8','2',95)
INSERT INTO sc VALUES('1','5',80)
INSERT INTO sc VALUES('1','4',75)
INSERT INTO sc VALUES('5','2',85)
INSERT INTO sc VALUES('4','2',75)
INSERT INTO sc VALUES('1','5',85)
INSERT INTO sc VALUES('3','2',65)
INSERT INTO sc VALUES('1','4',95)
SELECT*FROM sc