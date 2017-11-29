
public class Test {
	/*
	 * 创建一个测试类，实例化一个警犬对象，设置警犬品种、毛的颜色、重量、年龄、眼睛颜色、腿的数量、最快时速，
     调用它的吃的方法和work方法
	 * 
	 */
	public static void main(String[] args) {
		PoliceDog p=new PoliceDog();
		p.setVariety("拉布拉多");
		p.setColor("黑色");
		p.setWeight(30);
		p.setAge(3);
		p.setEyecolor("黑色");
		p.setLeg(4);
		p.setShisu(40);
		p.work();
	}

}
