package com.liumaosheng3;

public class Test {
	public static void main(String[] args) {
		Student s=new Student();
		s.name="小明";
		s.age=15;
		s.sex='男';
		s.work="学习";
		s.say();
		Worker w=new Worker();
		w.name="李红";
		w.age=28;
		w.sex='女';
		w.work="上班";
		w.say();		
	}

}
