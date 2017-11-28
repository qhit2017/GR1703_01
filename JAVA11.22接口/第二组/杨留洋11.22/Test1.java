package com.zuoye;

public class Test1 {
	public static void main(String[] args) {
		Dog a = new Dog();
		a.setName("毛毛");
		a.setPingzhong("哈士奇");
		a.setAge(5);
		a.setYance("黑白");
		a.info();
		a.jiao();
		a.chi();
		
		Mouse b = new Mouse();
		b.setName("小鬼");
		b.setPingzhong("不知道");
		b.setTui(4);
		b.setWeight(12);
		b.info();
		b.chi();
		b.jiao();
	}
	
	

}
