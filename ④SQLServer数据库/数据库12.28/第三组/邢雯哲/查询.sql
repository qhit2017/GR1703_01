--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�

SELECT (g.gname) as '��Ʒ����',(g.price) as '��Ʒ�۸�'
from goods g
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT i.inamt
from indetail i
WHERE i.inamt=20
--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT MAX(i.inamt)
from indetail i
WHERE i.month='2017��5�·�'

--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT *
from dept d INNER JOIN goods c ON d.deptno=c.gid

--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT MAX(o.outamt) as'�������'
from outdetail o
WHERE o.month='2017��6�·�'

--6.	���±���500g�Ĺ��ӣ�5�·������������10
UPDATE goods SET gname=''

--7.	���豸��2017��5�·� �ĳ����¼��ɾ��

--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT SUM(d.deptno),d.dname
from dept d INNER JOIN outdetail o ON d.deptno=o.outid
HAVING d.dname='����'

--9.	��ѯ�������õ��ĸ���Ʒ���

SELECT max (g.gname) as'������Ʒ'
from dept d INNER JOIN goods g ON d.deptno=g.gid
WHERE d.dname='����'

--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
SELECT d.dname
from dept d
where d.dname='������'OR d.dname='�������'

--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������

--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�

--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 

