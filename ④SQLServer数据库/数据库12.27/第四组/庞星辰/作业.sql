--1.	��ѯ�ա������ʦ������
SELECT a.tname
from Teacher a
where a.tname LIKE '��%'

--2.	��ѯ������Ů���ֱ��ж�����
SELECT a.ssex, COUNT(a.ssex) 
from student a
GROUP BY a.ssex

--3.	��ѯѧ���еڶ��������ĵ�����Щ��
SELECT a.sname
from student a
WHERE a.sname LIKE '_��%'

--4.	��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
SELECT MAX(a.score) as '��߷�',min(a.score) as '��ͷ�',AVG(a.score) as 'ƽ����'  
from SC a INNER JOIN Course s ON a.cid=s.cid
AND s.cname='����'

--5.	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���
SELECT s.sid,s.score
from SC s WHERE (SELECT AVG(a.score)  from SC a ) > 60

--6.	��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���
SELECT a.sid as 'ѧ��',a.sname as '����',SUM(c.cid) as'ѡ����',  max(s.score) as '�ܳɼ�'
from student a INNER JOIN SC s ON a.sid =s.sid INNER JOIN Course c ON s.cid=c.cid
GROUP BY c.cname ,a.sid,a.sname,s.score

--7.	��ѯ����Ӫ�����ſεĽ�ʦ���ơ�ѧ�����ơ�ѧ���ɼ�
SELECT s.tname as '��ʦ����',i.sname as 'ѧ������',c.score as '�ɼ�'
from Course  a INNER JOIN Teacher s ON a.tid=s.tid INNER JOIN SC c ON  a.cid=c.cid INNER JOIN student i ON c.sid=i.sid
AND a.cname='����Ӫ��'

--8.	��ѯ���пγ̳ɼ�С��80�ֵ�ͬѧ��ѧ�š�������
SELECT s.sid,s.sname
from SC a INNER JOIN student s on a.sid=s.sid
WHERE a.score<80

--9.	��ѯû�вμ����пγ̿��Ե�ͬѧ��ѧ�š�����
SELECT a.sid,s.sname
from sc a INNER JOIN student s ON a.sid=s.sid
AND a.score is NULL 

--10.	�ѡ�SC�����С���������ʦ�̵Ŀεĳɼ�����5�֣�

(SELECT s.score
from Course a INNER JOIN SC s ON s.cid=s.cid INNER JOIN Teacher c ON a.tid=c.tid
WHERE c.tname='����')


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

