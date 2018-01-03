--商品表

INSERT INTO goods VALUES(1,'饼干','50包','好吃点','12.9')
INSERT INTO goods VALUES(2,'饼干','60包','奥利奥','21.6')
INSERT INTO goods VALUES(3,'山楂片','100包','800g','5.4')
INSERT INTO goods VALUES(4,'火腿肠','90包','双汇','12.6')
INSERT INTO goods VALUES(5,'面包','100包','美心','5.5')
INSERT INTO goods VALUES(6,'瓜子','100包','500g','6.5')
INSERT INTO goods VALUES(7,'面包','50包','华福','3.5')
INSERT INTO goods VALUES(8,'山楂片','100包','1.5kg','10.5')
INSERT INTO goods VALUES(9,'瓜子','80包','1kg','11.8')
INSERT INTO goods VALUES(10,'瓜子','70包','500g','6.5')

--入库表

INSERT INTO indetail VALUES(1,1,20,'2017年5月份')
INSERT INTO indetail VALUES(2,1,50,'2017年7月份')
INSERT INTO indetail VALUES(2,1,50,'2017年3月份')
INSERT INTO indetail VALUES(3,2,70,'2017年4月份')
INSERT INTO indetail VALUES(4,2,80,'2017年3月份')
INSERT INTO indetail VALUES(5,3,90,'2017年5月份')
INSERT INTO indetail VALUES(6,3,55,'2017年6月份')
INSERT INTO indetail VALUES(7,4,62,'2017年7月份')
INSERT INTO indetail VALUES(8,4,100,'2017年6月份')
INSERT INTO indetail VALUES(9,5,45,'2017年5月份')
INSERT INTO indetail VALUES(10,3,75,'2017年7月份')


--部门表

INSERT INTO dept VALUES(10,'财务部')
INSERT INTO dept VALUES(20,'生产部')
INSERT INTO dept VALUES(30,'设备部')
INSERT INTO dept VALUES(40,'技术部')
INSERT INTO dept VALUES(50,'设备部')
INSERT INTO dept VALUES(60,'财务部')
INSERT INTO dept VALUES(70,'财务部')
INSERT INTO dept VALUES(80,'生产部')
INSERT INTO dept VALUES(90,'生产部')
INSERT INTO dept VALUES(100,'财务部')

--出库表 

INSERT INTO outdetail VALUES(1,1,5,'2017年5月',10)
INSERT INTO outdetail VALUES(2,1,8,'2017年6月',10)
INSERT INTO outdetail VALUES(2,1,8,'2017年1月',10)
INSERT INTO outdetail VALUES(3,1,16,'2017年10月',10)
INSERT INTO outdetail VALUES(4,2,16,'2017年7月',10)
INSERT INTO outdetail VALUES(5,3,20,'2017年8月',10)
INSERT INTO outdetail VALUES(6,3,10,'2017年9月',10)
INSERT INTO outdetail VALUES(7,4,20,'2017年6月',10)
INSERT INTO outdetail VALUES(8,5,15,'2017年3月',10)
INSERT INTO outdetail VALUES(9,6,10,'2017年1月',10)
INSERT INTO outdetail VALUES(10,6,10,'2017年12月',10)

