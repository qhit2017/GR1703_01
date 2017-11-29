package com.w1;

public class Test {
	public static void main(String[] args) {
		Dog a=new Dog();
		a.setGouname("大白");
		a.setGoupinzhong("拉布拉多");
		a.setNianling(8);
		a.setYanse('白');
		a.chi();
		a.jiao();
		Laoshu b=new Laoshu();
		b.setShuname("小白");
		b.setShupinzhong("未知");
		b.setShutizhong(1);
		b.chi();
		b.jiao();
	}

}
