package Dog;
//	4  创建一个测试类，实例化一个警犬对象，设置警犬品种、毛的颜色、重量、年龄、眼睛颜色、腿的数量、最快时速，
//	调用它的吃的方法和work方法
public class Ceshi {

	public static void main(String[] args) {
		
		JingDog a = new JingDog();
		a.setPinzhong("长毛");
		a.setColor("黄色");
		a.setZhongliang(10.1);
		a.setAge(10);
		a.getYanjingyanse();
		a.getShuliang();
		a.getSudu();
		
		a.chi();
		
	}
}
