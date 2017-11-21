
public class Ceshi {
	
	public static void main(String[] args) {
		/*
		 * 4  创建一个测试类，实例化一个警犬对象，设置警犬品种、毛的颜色、重量、年龄、眼睛颜色、腿的数量、最快时速，
	     调用它的吃的方法和work方法
		 */
		Jiingquan a=new Jiingquan();
		a.setPinzhong("拉布拉多");
		a.setYanse('白');
		a.setZhongliang(100);
		a.setNianling(10);
		a.setYanjingyanse('黑');
		a.setTuishu(4);
		a.setShisu(60);
	   a.gou();
	   a.work();
	}

}
