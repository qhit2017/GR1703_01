create table  student(
id int,
name nvarchar(6),
sex nchar(1),
age int,
dizhi nvarchar(50)
)
update student set dizhi='�ܿ�'; 

update student set age=30,sex='��'where name='����';

delete from student;


delete from student where name='����';

delete from student where age>10;
