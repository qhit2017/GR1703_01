



14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
16.	��ѯ���в��ա��¡���ѧ��������


--��ѯȫ��ѧ����ѧ����������
SELECT s.id,s.sname
from student s

--��ѯȫ��ѧ����������ѧ�š�רҵ
SELECT s.id,s.sname,s.major
from student s

--��ȫ��ѧ���������������䡣
SELECT s.sname,s.age
from student s

--��ѯ���������ѧ��רҵȫ��ѧ����������
SELECT *
from student s
WHERE s.major='�������ѧ'

--��ѯ����������20�����µ�ѧ�������������䡣
SELECT s.sname,s.age
from student s
WHERE s.age<20

--��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT s.sname,s.age,s.score
from student s
order by s.score

--��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT s.id
from student s
order by s.score asc

--��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT s.name,s.major,s.age
from student s
WHERE s.age>17 AND s.age<23


--��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT s.name,s.sex
from student s
WHERE s.major='IS' OR s.major='MA' OR s.major='CS'


--��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT s.name,s.sex
from student s
WHERE (s.major!='IS' AND  s.major!='MA' AND  s.major!='CS')

--��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
from student s
WHERE s.id='09102040203'


--��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT s.name,s.sex,s.id
from student s
WHERE a.name like '��%'


--��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ��������
SELECT s.name
from student s
WHERE a.name like '��__'



--��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ��
SELECT s.name,s.id
from student s
WHERE a.name like '_��%'



--	��ѯ���в��ա��¡���ѧ��������
SELECT s.name
from student s
WHERE a.name not like '��%'
