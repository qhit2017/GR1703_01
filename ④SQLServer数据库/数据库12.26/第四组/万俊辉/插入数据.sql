--二、仿照下面的格式用insert语句给三张表添加数据，
SELECT * FROM student 
--要求学生表和选课表的记录至少要达到25条记录以上，
INSERT INTO student VALUES(201701,'一','男',17,'CS');
INSERT INTO student VALUES(201702,'二','男',17,'CS');
INSERT INTO student VALUES(201703,'三','男',20,'MA');
INSERT INTO student VALUES(201704,'四','女',18,'CS');
INSERT INTO student VALUES(201705,'五','男',19,'MA');
INSERT INTO student VALUES(201706,'六','男',17,'CS');
INSERT INTO student VALUES(201707,'七','男',15,'MA');
INSERT INTO student VALUES(201708,'八','女',17,'CS');
INSERT INTO student VALUES(201709,'九','女',19,'MA');
INSERT INTO student VALUES(2017010,'十','女',18,'CS');
INSERT INTO student VALUES(2017011,'十一','男',20,'CS');
INSERT INTO student VALUES(2017012,'十二','男',19,'IS');
INSERT INTO student VALUES(2017013,'十三','男',18,'IS');
INSERT INTO student VALUES(2017014,'十四','女',18,'IS');
INSERT INTO student VALUES(2017015,'十五','男',18,'MA');
INSERT INTO student VALUES(2017016,'十六','女',18,'CS');
INSERT INTO student VALUES(2017017,'十七','男',19,'CS');
INSERT INTO student VALUES(2017018,'十八','女',19,'IS');
INSERT INTO student VALUES(2017019,'十九','男',19,'IS');
INSERT INTO student VALUES(2017020,'二十','女',19,'CS');
INSERT INTO student VALUES(2017021,'二十一','男',20,'IS');
INSERT INTO student VALUES(2017022,'二十二','女',18,'IS');
INSERT INTO student VALUES(2017023,'二十三','男',20,'IS');
INSERT INTO student VALUES(2017024,'二十四','女',19,'CS');
INSERT INTO student VALUES(2017025,'二十五','男',17,'CS');

--课程表至少达到10条以上记录，可用本班级的学生姓名和所学课程为基本数据。(15分);

INSERT INTO Course VALUES(1,'数据库',4);
INSERT INTO Course VALUES(2,'数学',2);
INSERT INTO Course VALUES(3,'语文',2);
INSERT INTO Course VALUES(4,'外语',2);
INSERT INTO Course VALUES(5,'信息系统',4);
INSERT INTO Course VALUES(6,'操作系统',4);
INSERT INTO Course VALUES(7,'数据结构',4);
INSERT INTO Course VALUES(8,'数据处理',4);
INSERT INTO Course VALUES(9,'PASCAL语言',4);
INSERT INTO Course VALUES(10,'JAVA',4);

--选课表
INSERT INTO SC VALUES (201701,1,80);
INSERT INTO SC VALUES (201701,2,80);
INSERT INTO SC VALUES (201701,3,78);
INSERT INTO SC VALUES (201702,1,79);
INSERT INTO SC VALUES (201702,2,68);
INSERT INTO SC VALUES (201702,4,73);
INSERT INTO SC VALUES (201703,1,80);
INSERT INTO SC VALUES (201703,2,80);
INSERT INTO SC VALUES (201703,5,80);
INSERT INTO SC VALUES (201704,10,59);
INSERT INTO SC VALUES (201704,7,63);
INSERT INTO SC VALUES (201704,5,67);
INSERT INTO SC VALUES (201,1,80);
INSERT INTO SC VALUES (202,1,80);
INSERT INTO SC VALUES (203,9,68);
INSERT INTO SC VALUES (204,10,80);
INSERT INTO SC VALUES (205,7,73);
INSERT INTO SC VALUES (206,8,80);

INSERT INTO SC VALUES (207,4,70);
INSERT INTO SC VALUES (208,10,80);
INSERT INTO SC VALUES (209,2,92);
INSERT INTO SC VALUES (201,10,80);
