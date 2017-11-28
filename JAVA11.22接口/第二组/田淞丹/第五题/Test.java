package com.liumaosheng5;

public class Test {
	public static void main(String[] args) {
		Dog d=new Dog();
		d.setName("轮胎");
		d.setAge(2);
		d.setColor("黄色");
		d.setVariety("拉布拉多");
		d.eat();
		d.call();
		Mouse m=new Mouse();
		m.setName("傻子");
		m.setVariety("野生");
		m.setLeg(4);
		m.setWeight(1.2);
		m.eat();
		m.call();
	}
	

}
