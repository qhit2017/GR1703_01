







--��ѯȫ��ѧ����ѧ����������
SELECT a.id,s.sname
from student a

--��ѯȫ��ѧ����������ѧ�š�רҵ
SELECT b.id,.sname,b.major
from student b

--��ȫ��ѧ���������������䡣
SELECT c.sname,c.age
from student c

--��ѯ���������ѧ��רҵȫ��ѧ����������
SELECT *
from student d
WHERE d.major='�������ѧ'

--��ѯ����������20�����µ�ѧ�������������䡣
SELECT e.sname,e.age
from student e
WHERE e.age<20

--��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT f.sname,f.age,f.score
from student f
order by f.score

--��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT g.id
from student g
order by g.score asc

--��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT h.name,h.major,h.age
from student h
WHERE h.age>18 AND h.age<23


--��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT j.name,j.sex
from student j
WHERE j.major='IS' OR j.major='MA' OR j.major='CS'


--��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT k.name,k.sex
from student k
WHERE (k.major!='IS' AND  k.major!='MA' AND  k.major!='CS')

--��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
from student l
WHERE l.id='09102040203'


--��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT q.name,q.sex,q.id
from student q
WHERE q.name like '��%'


--��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ��������
SELECT w.name
from student w
WHERE w.name like '��__'



--��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ��
SELECT e.name,e.id
from student e
WHERE e.name like '_��%'



--	��ѯ���в��ա��¡���ѧ��������
SELECT s.name
from student s
WHERE a.name notlike '��%'
