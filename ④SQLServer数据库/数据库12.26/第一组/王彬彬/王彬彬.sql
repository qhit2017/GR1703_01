--������
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

--student��������
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215121  ', N'����                ', N'��', 20, N'CS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215122  ', N'����                ', N'Ů', 19, N'CS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215123  ', N'����                ', N'Ů', 18, N'MA                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515125  ', N'����                ', N'��', 19, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515126  ', N'����                ', N'��', 20, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515127  ', N';����               ', N'��', 21, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515128  ', N'����                ', N'Ů', 22, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515129  ', N'����                ', N'��', 23, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515130  ', N'�                ', N'��', 24, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515131  ', N'���»�              ', N'Ů', 25, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515132  ', N'����                ', N'��', 26, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515133  ', N'ʷ̩��              ', N'Ů', 27, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515134  ', N'ʩ������            ', N'��', 28, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515135  ', N'С��                ', N'��', 20, N'CS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515136  ', N'С��                ', N'��', 20, N'CS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515137  ', N'С��                ', N'��', 20, N'MA                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515138  ', N'С��                ', N'��', 20, N'IS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515139  ', N'С��                ', N'��', 20, N'MA                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515140  ', N'�º�                ', N'��', 18, N'CS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515141  ', N'����ӱ              ', N'Ů', 18, N'MA                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515142  ', N'��һ��              ', N'Ů', 18, N'MA                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515143  ', N'��С��              ', N'��', 18, N'MA                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515144  ', N'½չ��              ', N'��', 18, N'CS                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515145  ', N'������              ', N'��', 18, N'MA                  ')
INSERT [dbo].[student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200515146  ', N'�ع�����            ', N'��', 18, N'MA                  ')



--sc ��������

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



--course ��������
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'1   ', N'���ݿ�              ', 4)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'10  ', N'����                ', 2)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'11  ', N'����                ', 4)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'2   ', N'��ѧ                ', 2)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'3   ', N'��Ϣϵͳ            ', 4)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'4   ', N'����ϵͳ            ', 3)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'5   ', N'���ݽṹ            ', 4)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'6   ', N'���ݴ���            ', 2)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'7   ', N'PASCAL����          ', 4)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'8   ', N'JAVA����            ', 4)
INSERT [dbo].[course] ([Cno], [Cname], [Ccredit]) VALUES (N'9   ', N'java�߼�            ', 5)

--������SQL���������б��ѯ(70��)
--1����ѯȫ��ѧ����ѧ����������
SELECT S.Sno,S.Sname 
FROM student S

--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT S.Sname ,S.Sno,S.Sdept
FROM student S

--3����ȫ��ѧ�����������������ݡ�
SELECT S.Sname,2017-S.Sage AS'�������'
FROM student S

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT S.Sno
FROM student S INNER JOIN SC SC ON S.Sno=SC.Sno
AND Grade IS NOT NULL

--5����ѯ�������ѧϵȫ��ѧ����������
SELECT *
FROM student S 
WHERE S.Sdept ='�������ѧ'

--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT S.Sname , S. Sage 
FROM student S
where  S.Sage<20

--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT S.Sno
FROM student S INNER JOIN sc SC ON S.Sno=SC.Grade
			INNER JOIN course C ON C.Cno= SC.Cno
AND Grade <60

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT S. Sname,S.Sdept,S.Sage 
FROM student S 
WHERE S.Sage BETWEEN 18 AND 22

---9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT S.Sname,S.Sdept,S.Sage 
FROM student S 
WHERE S.Sage NOT BETWEEN 20 AND 23

--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT S.Sname,S.Ssex 
FROM student S 
WHERE S.Sdept IN ('��Ϣϵ','��ѧϵ','�������ѧϵ')
ORDER BY S. Sdept 

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT S.Sname,S.Ssex 
FROM student S 
WHERE S.Sdept NOT  IN ('��Ϣϵ','��ѧϵ','�������ѧϵ') AND S.Sdept IS NOT NULL
ORDER BY S. Sdept 

--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
FROM student S INNER JOIN sc SC ON S.Sno=SC.Sno
	 INNER JOIN course C ON C.Cno=SC.Cno
WHERE S.Sno=09102040203

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT S.Sname,S.Sno,S.Ssex 
FROM student S 
WHERE S.Sname LIKE '��%'

--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT S.Sname 
FROM student S 
WHERE S.Sname LIKE'��__'

--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT *
FROM student S 
WHERE S.Sname LIKE '_��%'

--16����ѯ���в��ա��¡���ѧ��������
SELECT *
FROM student S 
WHERE S.Sname NOT LIKE '��%'

--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT C.Cno,C.Ccredit
FROM course C INNER JOIN sc SC ON C.Cno=SC.Cno
WHERE C.Cname ='DB_Design'

--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT S.Sno,C.Cname 
FROM student S LEFT JOIN sc SC ON S.Sno=SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno
AND SC.Grade IS NULL

--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT S.Sno,C.Cname 
FROM student S INNER JOIN sc SC ON SC.Sno=S.Sno
 INNER JOIN course C ON C.Cno=SC.Cno 

--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT S.Sno , SC.Grade 
FROM student S INNER JOIN sc SC ON SC.Sno=S.Sno 
   INNER JOIN course C ON C. Cno =SC.Cno 
   AND C.Cno=3
   ORDER BY SC.Grade 

--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
FROM student S 
ORDER BY S.Sdept ,S.Sage DESC

--22��	��ѯѧ����������
SELECT COUNT(*)
FROM student 

--23��	��ѯѡ������ѧ�γ̵�ѧ��������
SELECT COUNT(*)
FROM student S INNER JOIN sc SC ON S.Sno=SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno 
	AND C.Cname ='��ѧ'

--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
SELECT AVG(SC.Grade )
FROM student S INNER  JOIN sc SC ON S.Sno = SC.Sno 
		INNER JOIN course C ON C.Cno=SC.Cno
	AND C.Cno=1
		
		
--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT MAX(SC.Grade )
FROM student S INNER JOIN sc SC ON S.Sno=SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno
	AND C.Cno =1

--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT SUM(C.Ccredit )
FROM student S INNER JOIN sc SC ON S.Sno = SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno 
	AND S.Sno =200215121 AND SC.Grade >60

--27��	������γ̺ż���Ӧ��ѡ��������
SELECT COUNT(*) AS'����'
FROM student S INNER JOIN sc SC ON S.Sno = SC.Sno 
	INNER JOIN course C ON C. Cno =SC.Cno  
	GROUP BY C.Cno 

--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT S.Sno 
FROM student S INNER JOIN sc SC ON S.Sno = SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno 
	GROUP BY S.Sno 
	HAVING COUNT(*)>3
