SELECT *
FROM Student 

SELECT a.Sno AS 'ѧ��',a.Sname AS '����',a.Ssex AS '�Ա�',
		a.Sage AS '����',a.Sdept AS 'רҵ��',a.Grade AS '�ɼ�'
from Student a
--��ѯȫ��ѧ����ѧ����������
SELECT a.Sno ,a.Sname 
FROM Student a
--��ѯȫ��ѧ����������ѧ�š�רҵ
SELECT a.Sname ,a.Sno ,a.Sdept 
from Student a 
--��ȫ��ѧ����������������
SELECT a.Sname ,a.Sage 
FROM Student a
--��ѯ���������ѧ��רҵȫ��ѧ��������
SELECT *
FROM Student a
WHERE a.Sdept ='�������ѧ'
--��ѯ����������20�����µ�ѧ��������������
SELECT a.Sname ,a.Sage 
FROM Student a
WHERE a.Sage <20
--��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT a.Sname ,a.Sage ,a.Grade 
FROM Student a
WHERE a.Sage <18
ORDER BY a.Grade ASC 
--��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ���������
SELECT a.Sno 
FROM Student a
WHERE a.Grade <60
ORDER BY a.Grade DESC 
--��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT a.Sname ,a.Sdept ,a.Sage 
FROM Student a
WHERE a.Sage >=18 AND a.Sage <=22
--��ѯ���䲻��20~23��֮���ѧ��������רҵ������
SELECT a.Sname ,a.Sdept ,a.Sage 
FROM Student a
WHERE a.Sage<20 AND a.Sage>23
--��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT a.Sname ,a.Ssex 
FROM Student a
WHERE a.Sdept='��Ϣϵ'OR a.Sdept ='��ѧϵ'OR a.Sdept ='�������ѧϵ'
--��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT a.Sname ,a.Ssex 
FROM Student a
WHERE a.Sdept!='��Ϣϵ'AND a.Sdept !='��ѧϵ'AND  a.Sdept !='�������ѧϵ'
--��ѯѧ��Ϊ09102040203��ѧ������ϸ���
SELECT *
FROM Student a
WHERE a.Sno ='09102040203'
--��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT a.Sname ,a.Sno ,a.Ssex 
FROM Student a
WHERE a.Sname ='��%'
--��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ��������
SELECT a.Sname 
FROM Student a
WHERE a.Sname ='��__'
--��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ��
SELECT a.Sname ,a.Sno 
FROM Student a
WHERE a.Sname ='_��%'
--��ѯ���в��ա��¡���ѧ������
SELECT a.Sname 
FROM Student a
WHERE a.Sname !='��%'












