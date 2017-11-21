
public class TeskJingDog {
	
	/*4  创建一个测试类，实例化一个警犬对象，设置警犬品种、毛的颜色、重量、年龄、眼睛颜色、腿的数量、最快时速，
     调用它的吃的方法和work方法
	 * 
	 */

public static void main(String[] args) {
	
	JingDog a = new JingDog();
	a.setPinzhong("狼狗");
	a.setColor("灰白");
	a.setHight(120);
	a.setAge(10);
	a.setYan("水晶蓝");
	a.setTui(4);
	a.setShisu(360);
	
	a.eat();
	a.work();
	
}
	
	
}
