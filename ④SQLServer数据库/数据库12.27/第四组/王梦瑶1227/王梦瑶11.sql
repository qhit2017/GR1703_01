--1.	��ѯ�ա������ʦ������
SELECT t.tname
from teacher t
WHERE t.tname LIKE '��%'
--2.	��ѯ������Ů���ֱ��ж�����
SELECT s.ssex, COUNT(*) as '����'
from student s 
GROUP BY s.ssex 
--3.	��ѯѧ���еڶ��������ĵ�����Щ��
SELECT s.sname 
from student s 
WHERE s.sname LIKE '_��%'
--4.	��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
SELECT MAX(s.score ) as '��߷�',MIN(s.score ) as '��ͷ�' ,AVG(s.score ) as 'ƽ����'     
from sc s INNER JOIN course c ON s.cid=c.cid
GROUP BY c.cname 
HAVING  c.cname='����'
--5.	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���
SELECT s.sid ,AVG(s.score ) as 'ƽ���ɼ�'
from sc s 
GROUP BY s.sid 
HAVING AVG(s.score )>60 
--6.	��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���
SELECT s.sid  ,t.sname ,COUNT(c.cid  ),SUM(s.score )  
from sc s INNER JOIN student t ON s.sid =t.sid 
INNER JOIN course c ON s.cid =c.cid 
 GROUP BY s.sid,t.sname 
--7.	��ѯ����Ӫ�����ſεĽ�ʦ���ơ�ѧ�����ơ�ѧ���ɼ�
SELECT a.tname ,t.sname ,s.score 
from sc s INNER JOIN student t ON s.sid =t.sid 
INNER JOIN course c ON s.cid =c.cid 
INNER JOIN teacher a ON c.tid =a.tid 
 AND   c.cname ='����Ӫ��'
--8.	��ѯ���пγ̳ɼ�С��80�ֵ�ͬѧ��ѧ�š�������
SELECT t.sid ,t.sname 
from sc s INNER JOIN student t ON s.sid =t.sid 
INNER JOIN course c ON s.cid =c.cid 
GROUP BY s.sid  ,t.sid ,t.sname 
HAVING MAX(s.score )<80 
--9.	��ѯû�вμ����пγ̿��Ե�ͬѧ��ѧ�š�����
SELECT t.sid ,t.sname 
from sc s INNER JOIN student t ON s.sid =t.sid 
INNER JOIN course c ON s.cid =c.cid 
AND s.score IS NULL 
--10.	�ѡ�SC�����С���������ʦ�̵Ŀεĳɼ�����5�֣�
SELECT 
from sc s INNER JOIN course c ON s.cid =c.cid 

11.	ɾ���ɼ����С������ա���ʦ�̵Ŀγ̵ļ�¼��
12.	��ѯ���ĵ���߷��Լ�ѧ������
13.	��ѯÿ�ſ�Ŀ��ƽ���ɼ�
14.	��ѯÿ�ſ�Ŀ�ļ�����
15.	��ѯӢ��ǰ������ѧ����������������ʦ����
16.	��ѯÿ�ſο��Ե�����
17.	��ѯƽ���ɼ�����85������ѧ����ѧ�š�������ƽ���ɼ�
18.	��ѯ��ͬ��������ͬ�Ա������Щ��
19.	��ѯjava�������ڵ���70��С�ڵ���90��Ů��������������Ա𡢷���
20.	��ѯ������ʦ�̵Ŀ��У��ɼ���õ�ǰ������������ֺͷ���

