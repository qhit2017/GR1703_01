package Work5;

public class Test {
	//d.创建测试类，分别创建狗和老鼠的实例化对象，给对象的属性赋值，并且调用对象的吃、叫的方法
	public static void main(String[] args) {
		Dog d = new Dog();
		d.setAge(4);
		d.setColor("黑色");
		d.setName("小白");
		d.setPinzhong("大红狗");
		d.eat();
		d.call();
			
		Laosu L = new Laosu();
		L.setName("米老鼠");
		L.setPz("拟人种");
		L.setTui(2);
		L.setZhongliang(10);
		L.eat();
		L.call();
	}
		
		
	
	
	
}
