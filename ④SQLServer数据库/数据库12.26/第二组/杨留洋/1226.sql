SELECT  * FROM student 
select * FROM Course 
select * FROM SC 
--1����ѯȫ��ѧ����ѧ����������
select a.sno,a.sname
from student a 



--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
select a.sname,a.sno,a.sdept
from student a





--3����ȫ��ѧ�����������������ݡ�
select a.sname,a.sage
from student a



--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
select a.sdept,a.sno
from student a INNER JOIN SC s ON a.sno=s.sno




--5����ѯ�������ѧϵȫ��ѧ����������
select a.*
from student a
WHERE a.sdept='cs'



--6����ѯ����������20�����µ�ѧ�������������䡣
select a.sname,a.sage
from student a
WHERE a.sage<20



--7����ѯ���Գɼ��в������ѧ����ѧ�š�
select a.sno
from SC  a
WHERE a.grade<50



--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
select a.sname,a.sdept,a.sage
from student a
WHERE a.sage IN (18,22)

--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
select a.sname,a.sdept,a.sage
from student a
WHERE a.sage NOT BETWEEN 20 AND 23

--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
select a.sname,a.ssex
from student a
WHERE a.sdept IN ('is','ma','cs')


--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
select a.sname,a.ssex
from student a
WHERE a.sdept NOT IN ('is','ma','cs')

--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
select a.*
from student a
WHERE a.sno='09102040203'

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
select a.sname,a.sno,a.ssex
from student a
WHERE a.sname LIKE '��%'

--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
select a.sname
from student a
WHERE a.sname LIKE '��__'

--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
select a.sname,a.sno
from student a
WHERE a.sname LIKE '_��%'

--16����ѯ���в��ա��¡���ѧ��������
select a.sname
from student a
WHERE a.sname not LIKE '��%'

--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�

--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
select a.sno,a.cno
from SC a
WHERE a.grade=NULL 

--19���������гɼ���ѧ��ѧ�źͿγ̺š�
select a.sno,a.cno
from SC a
WHERE a.grade IS NOT null

--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
select a.sno,a.grade
from sc a
WHERE a.cno='3'
ORDER BY a.grade DESC 

--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�



--22��	��ѯѧ����������
select COUNT(*) as '������'
from student a



--23��	��ѯѡ������ѧ�γ̵�ѧ��������
select  COUNT(*) 
from Course a
WHERE a.cname='��ѧ'


--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
select AVG(a.grade) 
from SC a
where a.cno='1'



--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
select max(a.grade)
from SC a
WHERE a.cno='1'



--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������


--27��	������γ̺ż���Ӧ��ѡ��������



--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�



