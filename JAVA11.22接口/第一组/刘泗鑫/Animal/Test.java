package com.Animal;

public class Test {
	/*
	 * d.���������࣬�ֱ𴴽����������ʵ�������󣬸���������Ը�ֵ�����ҵ��ö���ĳԡ��еķ���
	 */
	public static void main(String[] args) {
		
		Dog a = new Dog("����");
		a.setAge(3);
		a.setColor("����ɫ");
		a.setPingzhong("�ǹ�");
		a.eat();
		a.call();
		
		Laoshu b = new Laoshu("����","������");
		b.setDui(4);
		b.setWeight(5);
		b.eat();
		b.call();
	}

}
