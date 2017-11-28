package Work4;

public class Test {

//d.创建测试类，分别创建正方形和梯形的实例化对象，给对象的属性赋值，并且调用对象的周长、面积的方法
	public static void main(String[] args) {
		
		Zhengfangxing z =new Zhengfangxing();
			z.setBianchang(10);
			z.setZouchang(10);
			z.setMianji(12);
			z.Zouchang();
			z.Mianji();
			
			
		Tixing t = new Tixing();
			
			
			t.setShangbian(19);
			t.setXiabian(3);
			t.setGao(50);
			t.Zouchang();
			t.Mianji();
		
	}
	
}
