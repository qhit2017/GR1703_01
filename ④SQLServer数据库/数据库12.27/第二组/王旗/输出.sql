--1.	��ѯ�ա������ʦ������
SELECT*
from teacher a
WHERE a.tname='��%' 
--2.	��ѯ������Ů���ֱ��ж�����
SELECT   a.ssex,count(*)'����'
from student a
GROUP BY a.ssex
--3.	��ѯѧ���еڶ��������ĵ�����Щ��
SELECT *
from student a
WHERE a.sname='_��%'
--4.	��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
SELECT MAX( s.score)as'��߷�',MIN( s.score)AS'��ͷ�',AVG( s.score)as'ƽ����' 
from course c inner JOIN sc s on c.CId= s.cid
WHERE c.Cname='����'
--5.	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���
SELECT  s.sid, AVG( a.score)as'ƽ���ɼ�'
FROM student s inner JOIN sc a on a.cid= s.sid
GROUP BY s.sid
HAVING AVG( a.score)>60 
--6.	��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���
SELECT  s.sid,s.sname,c.Cname, SUM(a.score) as'�ܳɼ�'
from student s inner JOIN course c on s.sid= c.TId inner JOIN sc a on s.sid= a.cid
GROUP BY s.sid, s.sname, c.Cname

--7.	��ѯ����Ӫ�����ſεĽ�ʦ���ơ�ѧ�����ơ�ѧ���ɼ�
SELECT t.tname,s.sname,a.score
from student s INNER JOIN teacher t on s.sid= t.tid inner JOIN course c on s.sid= c.TId inner JOIN sc a on s.sid= a.cid
WHERE c.Cname='����Ӫ��'
--8.	��ѯ���пγ̳ɼ�С��80�ֵ�ͬѧ��ѧ�š�������
SELECT s.sid,s.sname
from student s inner JOIN course c on s.sid= c.TId inner JOIN sc a on s.sid= a.cid
WHERE a.score<80
--9.	��ѯû�вμ����пγ̿��Ե�ͬѧ��ѧ�š�����
SELECT s.sid,s.sname
from student s inner JOIN course c on s.sid= c.TId inner JOIN sc a on s.sid= a.cid
WHERE a.score is NULL
--10.	�ѡ�SC�����С���������ʦ�̵Ŀεĳɼ�����5�֣�

--11.	ɾ���ɼ����С������ա���ʦ�̵Ŀγ̵ļ�¼��
--12.	��ѯ���ĵ���߷��Լ�ѧ������
--13.	��ѯÿ�ſ�Ŀ��ƽ���ɼ�
--14.	��ѯÿ�ſ�Ŀ�ļ�����
--15.	��ѯӢ��ǰ������ѧ����������������ʦ����
--16.	��ѯÿ�ſο��Ե�����
--17.	��ѯƽ���ɼ�����85������ѧ����ѧ�š�������ƽ���ɼ�
SELECT s.sid,s.sname,AVG(a.score) 
from student s inner JOIN course c on s.sid= c.TId inner JOIN sc a on s.sid= a.cid
GROUP BY s.sid,s.sname
HAVING AVG(a.score) >85
--18.	��ѯ��ͬ��������ͬ�Ա������Щ��
--19.	��ѯjava�������ڵ���70��С�ڵ���90��Ů��������������Ա𡢷���
--20.	��ѯ������ʦ�̵Ŀ��У��ɼ���õ�ǰ������������ֺͷ���
SELECT  TOP 2 s.sname,a.score
from student s INNER JOIN teacher t on s.sid= t.tid inner JOIN course c on s.sid= c.TId inner JOIN sc a on s.sid= a.cid
WHERE t.tname='����'
ORDER BY a.score desc