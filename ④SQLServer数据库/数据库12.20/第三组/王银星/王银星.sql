SELECT * 
FROM Student a
--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������--�Ѳ���
SELECT a.Sno AS 'ѧ��' ,a.Sname AS '����' 
FROM Student a										
where a.Grade is NULL 
--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���--�Ѳ���
SELECT a.Sdept AS 'רҵ', AVG(a.Grade) AS 'ƽ���ɼ�'
FROM Student a										
group by a.Sdept 
--3.	�������гɼ���ѧ����ѧ�ź�������--�Ѳ���
SELECT a.Sno AS 'ѧ��',a.Sname AS '����' 
FROM Student a			
where a.Grade IS NOT NULL  
--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�--�Ѳ���
SELECT *
FROM Student a			
ORDER BY a.Sdept ASC ,a.Ssex DESC 
--5.	��ѯѧ����������--�Ѳ���
SELECT COUNT(*) AS '����'  
FROM Student a
--6.	��ѯ������Ů����������--�Ѳ���
SELECT a.Ssex AS '�Ա�', COUNT(*)AS '����' 
FROM Student a
group BY a.Ssex 
--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�--�Ѳ���
SELECT a.Sdept AS 'רҵ', AVG(a.Grade)AS 'ƽ���ɼ�' 
FROM Student a
group BY a.Sdept 
ORDER BY AVG(a.Grade)DESC  
--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���--�Ѳ���
SELECT a.Sdept AS 'רҵ', MAX(a.Grade) AS '�ɼ�'
FROM Student a
group BY a.Sdept 
--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���--�Ѳ���
SELECT a.Sdept AS 'רҵ', MIN(a.Grade) AS '�ɼ�'
FROM Student a
group BY a.Sdept
--10.	��ѯƽ���ɼ�����רҵ�����֡�--�Բ�
SELECT top 1
AVG(a.Grade)AS 'ƽ���ɼ�'  
from Student a
ORDER BY AVG(a.Grade)ASC 
--11.	��ѯ������Ů����ƽ���ɼ���
SELECT a.Ssex AS '�Ա�',AVG(a.Grade)AS 'ƽ���ɼ�'
FROM Student a
group BY a.Ssex 
--12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���--δ֪
SELECT AVG(a.Grade)AS 'ƽ���ɼ�' 
FROM Student a
GROUP BY a.Sdept    
--13.	��ѯרҵѧ����������50�˵�רҵ����--δ֪
SELECT a.Sdept AS 'רҵ��' ,COUNT(a.Sno)AS '����' 
FROM Student a
GROUP BY a.Sdept HAVING COUNT(a.Sdept)>50
--14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����--δ֪
SELECT AVG(a.Grade)AS 'ƽ���ɼ�',a.Sdept AS 'רҵ��'  
FROM Student a
where a.Sdept='�����'
GROUP BY a.Sdept,a.Sage HAVING a.Sage <18
