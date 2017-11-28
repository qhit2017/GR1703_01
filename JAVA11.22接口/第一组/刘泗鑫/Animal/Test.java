package com.Animal;

public class Test {
	/*
	 * d.创建测试类，分别创建狗和老鼠的实例化对象，给对象的属性赋值，并且调用对象的吃、叫的方法
	 */
	public static void main(String[] args) {
		
		Dog a = new Dog("二哈");
		a.setAge(3);
		a.setColor("银白色");
		a.setPingzhong("狼狗");
		a.eat();
		a.call();
		
		Laoshu b = new Laoshu("杰瑞","土拨鼠");
		b.setDui(4);
		b.setWeight(5);
		b.eat();
		b.call();
	}

}
