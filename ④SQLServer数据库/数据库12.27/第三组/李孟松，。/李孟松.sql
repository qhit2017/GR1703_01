--1.	��ѯ�ա������ʦ������
SELECT *
FROM teacher a
where a.tname LIKE '��%'
--2.	��ѯ������Ů���ֱ��ж�����
SELECT a.ssex,COUNT(a.ssex) AS '����' 
FROM student a
GROUP BY a.ssex 

--3.	��ѯѧ���еڶ��������ĵ�����Щ��
SELECT *
FROM student a
where a.sname LIKE '_��%'

--4.	��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
SELECT MAX(a.score )AS '������߷�' ,MIN(a.score )AS '������ͷ�',AVG(a.score )AS '����ƽ����' 
from sc a
WHERE a.cid =(SELECT a.cid FROM course a WHERE a.cname LIKE '����')

--5.	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���
SELECT AVG(a.score ) AS 'ƽ����',a.sid 
from sc a
GROUP BY a.sid 
HAVING AVG(a.score )>60

--6.	��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���
SELECT COUNT(b.cid ),SUM(c.score ),a.sid ,a.sname  
FROM student a INNER JOIN course b ON a.sid =b.cid 
INNER JOIN sc c ON b.cid  =c.cid 
GROUP BY a.sname  



--7.	��ѯ����Ӫ�����ſεĽ�ʦ���ơ�ѧ�����ơ�ѧ���ɼ�
SELECT a.tname,d.sname ,c.score 
from teacher a INNER JOIN course  b ON a.tid  =b.tid 
INNER JOIN sc c ON b.cid =c.cid INNER JOIN student d ON c.sid =d.sid 
AND b.cname ='����Ӫ��' 
--8.	��ѯ���пγ̳ɼ�С��80�ֵ�ͬѧ��ѧ�š�������
SELECT b.sid ,b.sname 
from sc c INNER JOIN student b ON c.sid =b.sid 
AND c.score <80
--9.	��ѯû�вμ����пγ̿��Ե�ͬѧ��ѧ�š�����
SELECT b.sid ,b.sname 
from sc c INNER JOIN student b ON c.sid =b.sid 
AND c.score  IN (NULL ) 

--10.	�ѡ�SC�����С���������ʦ�̵Ŀεĳɼ�����5��
SELECT (a.score -5)
from sc a INNER JOIN teacher b ON a.cid  =b.tid 
WHERE  b.tname ='����' 
GROUP BY a.score 
--11.	ɾ���ɼ����С������ա���ʦ�̵Ŀγ̵ļ�¼��
--12.	��ѯ���ĵ���߷��Լ�ѧ������
--13.	��ѯÿ�ſ�Ŀ��ƽ���ɼ�
--14.	��ѯÿ�ſ�Ŀ�ļ�����
--15.	��ѯӢ��ǰ������ѧ����������������ʦ����
--16.	��ѯÿ�ſο��Ե�����
--17.	��ѯƽ���ɼ�����85������ѧ����ѧ�š�������ƽ���ɼ�
--18.	��ѯ��ͬ��������ͬ�Ա������Щ��
--19.	��ѯjava�������ڵ���70��С�ڵ���90��Ů��������������Ա𡢷���
--20.	��ѯ������ʦ�̵Ŀ��У��ɼ���õ�ǰ������������ֺͷ���






