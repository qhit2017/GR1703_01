--	��ѯȫ��ѧ����ѧ����������
SELECT a.Sno,a.Sname from a
--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��
SELECT a.name,a.xuehao,a.zhuanye from a
--3.	��ȫ��ѧ���������������䡣
SELECT a.name,a.age from a
--4.	��ѯ���������ѧ��רҵȫ��ѧ����������
SELECT  *FROM student a where a.Sdept='�������ѧ'
--5.	��ѯ����������20�����µ�ѧ�������������䡣
SELECT a.name ,a.age
FROM student a WHERE age<20
--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT a.name,a.age,a.score
from student a WHERE a.age<18 ORDER BY a.score DESC
--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
select a.Sno
from student a WHERE a.score<60 ORDER BY a.score DESC
--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT a.name,a.Sdept,a.age
from student a WHERE a.age=<22AND a.age>=18
--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
SELECT a.name,a.Sdept,a.age
from student a WHERE a.age>23AND a.age <20
--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
select a.name,a.sex
from student a WHERE a.Sdept='��Ϣϵ'OR a.Sdept=='��ѧϵ' or a.Sdept='�������ѧϵ'
--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT a.name,a.sex
FROM student a where a.Sdept!='��Ϣϵ' or  a.Sdept='��ѧϵ' or a.Sdept='�������ѧϵ'
--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
select*FROM student a where a.xuehao=09102040203
--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
select*from studnet a where  a.name LIKE'��%'
--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT*FROM student a where a.name like'��__'
--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
select a.name,a.xuehao
FROM student a WHERE a.name like'_��%'
--16.	��ѯ���в��ա��¡���ѧ��������
select a.name
from student a where a.name NOT LIKE '��%'
















