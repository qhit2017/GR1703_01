SELECT * from student
INSERT into student values (11,	'�����',	18,	'Ů')
INSERT into student values (12,	'����',	17,	'��')
INSERT into student values (13,	'������',	18,	'Ů')
INSERT into student values (14,	'������',	19,	'��')
INSERT into student values (15,	'���ĵ�',   19,	'��')
INSERT into student values (16,	'������',	19,	'��')
INSERT into student values (17,	'������',	18,	'Ů')
INSERT into student values (18,	'��ΰ��',	18,	'��')
INSERT into student values (19,	'������',	19,	'Ů')
INSERT into student values (20,	'������',	19,	'Ů')
INSERT into student values (21,	'������',	17,	'Ů')
INSERT into student values (22,	'�żҺ�',	18,	'Ů')
INSERT into student values (23,	'�����',	17,	'��')
INSERT into student values (24,	'��׳׳',	17,	'��')
INSERT into student values (25,	'��Ϊ',	16,	'��')
INSERT into student values (26,	'����',	18,	'Ů')
SELECT *FROM Teacher
INSERT into Teacher VALUES(61,	'������')
INSERT into Teacher VALUES(62,	'����')
INSERT into Teacher VALUES(63,	'����')
INSERT into Teacher VALUES(64,	'���')
SELECT*FROM Course
INSERT into Course VALUES(1,	'���������',	62)
INSERT into Course VALUES(2,	'java����',	62)
INSERT into Course VALUES(3,	'���ݿ����',61)
INSERT into Course VALUES(4,	'Ӣ��',	61)
INSERT into Course VALUES(5,	'��ѧ',	63)
INSERT into Course VALUES(6,	'����',	63)
INSERT into Course VALUES(7,	'����Ӫ��',	64)
SELECT *FROM Sc
INSERT into Sc VALUES(11,	1,	80)
INSERT into Sc VALUES(12,	1,	70)
INSERT into Sc VALUES(13,	2,	81)
INSERT into Sc VALUES(14,	2,	85)
INSERT into Sc VALUES(15,	3,	60)
INSERT into Sc VALUES(16,	3,	70)
INSERT into Sc VALUES(17,	4,	65)
INSERT into Sc VALUES(18,	4,	75)
INSERT into Sc VALUES(19,	5,	80)
INSERT into Sc VALUES(20,	5,	30)
INSERT into Sc VALUES(21,	6,	90)
INSERT into Sc VALUES(22,	6,	45)
INSERT into Sc VALUES(23,	7,	20)
--1.	��ѯ�ա������ʦ������
SELECT *
from Teacher a
  WHERE   a.Tname  like '��%'


--2.	��ѯ������Ů���ֱ��ж�����
SELECT b.ssex , COUNT(*)
FROM student b
group BY b.ssex

--3.	��ѯѧ���еڶ��������ĵ�����Щ��
SELECT *
FROM student c
where c.sname LIKE '%��%'

--4.	��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
SELECT *
FROM  Sc  d
WHERE d.cid=6
ORDER BY d.cid ASC 







--5.	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���






--6.	��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���
--7.	��ѯ����Ӫ�����ſεĽ�ʦ���ơ�ѧ�����ơ�ѧ���ɼ�
--8.	��ѯ���пγ̳ɼ�С��80�ֵ�ͬѧ��ѧ�š�������
--9.	��ѯû�вμ����пγ̿��Ե�ͬѧ��ѧ�š�����
--10.	�ѡ�SC�����С���������ʦ�̵Ŀεĳɼ�����5�֣�
--11.	ɾ���ɼ����С������ա���ʦ�̵Ŀγ̵ļ�¼��
--12.	��ѯ���ĵ���߷��Լ�ѧ������
--13.	��ѯÿ�ſ�Ŀ��ƽ���ɼ�
select f.cid, avg(f.score)
from Sc f
GROUP BY f.cid


--14.	��ѯÿ�ſ�Ŀ�ļ�����
--15.	��ѯӢ��ǰ������ѧ����������������ʦ����
--16.	��ѯÿ�ſο��Ե�����
--17.	��ѯƽ���ɼ�����85������ѧ����ѧ�š�������ƽ���ɼ�
--18.	��ѯ��ͬ��������ͬ�Ա������Щ��
--19.	��ѯjava�������ڵ���70��С�ڵ���90��Ů��������������Ա𡢷���
--20.	��ѯ������ʦ�̵Ŀ��У��ɼ���õ�ǰ������������ֺͷ���
