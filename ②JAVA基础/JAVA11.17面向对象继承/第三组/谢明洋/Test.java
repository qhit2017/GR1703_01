
public class Test {
	public static void main(String[] args) {
		
		/*
		 * 4  创建一个测试类，实例化一个警犬对象，设置警犬品种、毛的颜色、重量、年龄、眼睛颜色、腿的数量、最快时速，
     		调用它的吃的方法和work方法
		 */
		Dogpolice d=new Dogpolice();
		
		d.setKind("拉布拉多");
		d.setAge(12);
		d.setColor("黑");
		d.setWeight(30);
		d.eyecolor="褐色";
		d.legs=4;
		d.Maxspeed=60;
		
		d.work();
		d.eat();
		
	}

}
