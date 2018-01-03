--创建表
CREATE TABLE [dbo].[student](
	[Sno] [char](11) NOT NULL,
	[Sname] [char](20) NOT NULL,
	[Ssex] [char](2) NULL,
	[Sage] [smallint] NOT NULL,
	[Sdept] [char](20) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]



CREATE TABLE [dbo].[sc](
	[Sno] [char](11) NOT NULL,
	[Cno] [char](4) NOT NULL,
	[Grade] [smallint] NULL,
 CONSTRAINT [PK_sc] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC,
	[Cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]



CREATE TABLE [dbo].[course](
	[Cno] [char](4) NOT NULL,
	[Cname] [char](20) NOT NULL,
	[Ccredit] [smallint] NOT NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[Cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

--student插入数据
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215121  ', N'李勇                ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215122  ', N'刘晨                ', N'女', 19, N'CS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215123  ', N'王敏                ', N'女', 18, N'MA                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515125  ', N'张立                ', N'男', 19, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515126  ', N'张三                ', N'男', 20, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515127  ', N';李四               ', N'男', 21, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515128  ', N'王五                ', N'女', 22, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515129  ', N'李明                ', N'男', 23, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515130  ', N'李华                ', N'男', 24, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515131  ', N'刘德华              ', N'女', 25, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515132  ', N'成龙                ', N'男', 26, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515133  ', N'史泰龙              ', N'女', 27, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515134  ', N'施瓦辛格            ', N'男', 28, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515135  ', N'小明                ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515136  ', N'小智                ', N'男', 20, N'CS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515137  ', N'小李                ', N'男', 20, N'MA                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515138  ', N'小王                ', N'男', 20, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515139  ', N'小新                ', N'男', 20, N'MA                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515140  ', N'陈赫                ', N'男', 18, N'CS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515141  ', N'赵丽颖              ', N'女', 18, N'MA                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515142  ', N'胡一菲              ', N'女', 18, N'MA                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515143  ', N'曾小贤              ', N'男', 18, N'MA                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515144  ', N'陆展博              ', N'男', 18, N'CS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515145  ', N'吕子乔              ', N'男', 18, N'MA                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515146  ', N'关谷神奇            ', N'男', 18, N'MA                  ')



--sc 插入数据

INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200215121  ', N'1   ', 92)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200215121  ', N'2   ', 85)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200215121  ', N'3   ', 88)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200215121  ', N'8   ', 80)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200215122  ', N'2   ', 90)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200215122  ', N'3   ', 80)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200215123  ', N'4   ', 50)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515125  ', N'5   ', 15)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515126  ', N'3   ', 80)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515127  ', N'4   ', 80)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515128  ', N'8   ', 30)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515129  ', N'3   ', 90)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515130  ', N'5   ', 82)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515131  ', N'9   ', 82)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515132  ', N'4   ', 70)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515133  ', N'3   ', 30)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515134  ', N'5   ', 77)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515134  ', N'6   ', 100)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515135  ', N'3   ', 55)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515135  ', N'7   ', 50)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515136  ', N'3   ', 15)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515136  ', N'7   ', 60)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515137  ', N'6   ', 36)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515137  ', N'9   ', 59)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515138  ', N'8   ', 48)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515138  ', N'9   ', 22)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515139  ', N'4   ', 99)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515139  ', N'7   ', 89)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515140  ', N'5   ', 44)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515140  ', N'6   ', 78)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515141  ', N'1   ', 46)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515142  ', N'2   ', 99)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515143  ', N'2   ', 88)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515144  ', N'1   ', 77)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515145  ', N'5   ', 55)
INSERT [dbo].[sc] ([Sno], [Cno], [Grade]) VALUES (N'200515146  ', N'6   ', 66)



--course 插入数据
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'1   ', N'数据库              ', 4)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'10  ', N'音乐                ', 2)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'11  ', N'体育                ', 4)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'2   ', N'数学                ', 2)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'3   ', N'信息系统            ', 4)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'4   ', N'操作系统            ', 3)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'5   ', N'数据结构            ', 4)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'6   ', N'数据处理            ', 2)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'7   ', N'PASCAL语言          ', 4)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'8   ', N'JAVA基础            ', 4)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'9   ', N'java高级            ', 5)

--三、用SQL语句完成下列表查询(70分)
--1、查询全体学生的学号与姓名。
SELECT S.Sno,S.Sname 
FROM student S

--2、查询全体学生的姓名、学号、所在系。
SELECT S.Sname ,S.Sno,S.Sdept
FROM student S

--3、查全体学生的姓名及其出生年份。
SELECT S.Sname,2017-S.Sage AS'出生年份'
FROM student S

--4、查询选修了课程的学生学号（即有选修记录）。
SELECT S.Sno
FROM student S INNER JOIN SC SC ON S.Sno=SC.Sno
AND Grade IS NOT NULL

--5、查询计算机科学系全体学生的名单。
SELECT *
FROM student S 
WHERE S.Sdept ='计算机科学'

--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT S.Sname , S. Sage 
FROM student S
where  S.Sage<20

--7、查询考试成绩有不及格的学生的学号。
SELECT S.Sno
FROM student S INNER JOIN sc SC ON S.Sno=SC.Grade
			INNER JOIN course C ON C.Cno= SC.Cno
AND Grade <60

--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT S. Sname,S.Sdept,S.Sage 
FROM student S 
WHERE S.Sage BETWEEN 18 AND 22

---9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT S.Sname,S.Sdept,S.Sage 
FROM student S 
WHERE S.Sage NOT BETWEEN 20 AND 23

--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT S.Sname,S.Ssex 
FROM student S 
WHERE S.Sdept IN ('信息系','数学系','计算机科学系')
ORDER BY S. Sdept 

--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT S.Sname,S.Ssex 
FROM student S 
WHERE S.Sdept NOT  IN ('信息系','数学系','计算机科学系') AND S.Sdept IS NOT NULL
ORDER BY S. Sdept 

--12、查询学号为09102040203的学生的详细情况。
SELECT *
FROM student S INNER JOIN sc SC ON S.Sno=SC.Sno
	 INNER JOIN course C ON C.Cno=SC.Cno
WHERE S.Sno=09102040203

--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT S.Sname,S.Sno,S.Ssex 
FROM student S 
WHERE S.Sname LIKE '张%'

--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT S.Sname 
FROM student S 
WHERE S.Sname LIKE'李__'

--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT *
FROM student S 
WHERE S.Sname LIKE '_丽%'

--16、查询所有不姓“陈”的学生姓名。
SELECT *
FROM student S 
WHERE S.Sname NOT LIKE '陈%'

--17、查询DB_Design课程的课程号和学分。
SELECT C.Cno,C.Ccredit
FROM course C INNER JOIN sc SC ON C.Cno=SC.Cno
WHERE C.Cname ='DB_Design'

--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT S.Sno,C.Cname 
FROM student S LEFT JOIN sc SC ON S.Sno=SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno
AND SC.Grade IS NULL

--19、查所有有成绩的学生学号和课程号。
SELECT S.Sno,C.Cname 
FROM student S INNER JOIN sc SC ON SC.Sno=S.Sno
 INNER JOIN course C ON C.Cno=SC.Cno 

--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
SELECT S.Sno , SC.Grade 
FROM student S INNER JOIN sc SC ON SC.Sno=S.Sno 
   INNER JOIN course C ON C. Cno =SC.Cno 
   AND C.Cno=3
   ORDER BY SC.Grade 

--21、	查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。
SELECT *
FROM student S 
ORDER BY S.Sdept ,S.Sage DESC

--22、	查询学生总人数。
SELECT COUNT(*)
FROM student 

--23、	查询选修了数学课程的学生人数。
SELECT COUNT(*)
FROM student S INNER JOIN sc SC ON S.Sno=SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno 
	AND C.Cname ='数学'

--24、	计算1号课程的学生平均成绩。
SELECT AVG(SC.Grade )
FROM student S INNER  JOIN sc SC ON S.Sno = SC.Sno 
		INNER JOIN course C ON C.Cno=SC.Cno
	AND C.Cno=1
		
		
--25、	查询选修1号课程的学生最高分数。
SELECT MAX(SC.Grade )
FROM student S INNER JOIN sc SC ON S.Sno=SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno
	AND C.Cno =1

--26、	查询学号为200215121的学生选修课程的总学分数。
SELECT SUM(C.Ccredit )
FROM student S INNER JOIN sc SC ON S.Sno = SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno 
	AND S.Sno =200215121 AND SC.Grade >60

--27、	求各个课程号及相应的选课人数。
SELECT COUNT(*) AS'人数'
FROM student S INNER JOIN sc SC ON S.Sno = SC.Sno 
	INNER JOIN course C ON C. Cno =SC.Cno  
	GROUP BY C.Cno 

--28、	查询选修了3门以上课程的学生学号。
SELECT S.Sno 
FROM student S INNER JOIN sc SC ON S.Sno = SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno 
	GROUP BY S.Sno 
	HAVING COUNT(*)>3
