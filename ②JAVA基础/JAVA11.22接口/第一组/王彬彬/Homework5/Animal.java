package Homework5;
/*
 * a.创建接口动物 具有吃、叫的方法
   b.创建狗，实现动物这个接口。要求狗具有的属性包括：姓名、品种、颜色、年龄（属性私有） ，并创建两种构造方法（1 无参构造方法 2 参数为姓名的构造方法）
   c.创建老鼠 实现动物这个接口。要求老鼠具有的属性包括：姓名、品种、几条腿、体重（属性私有） ，并创建两种构造方法（1 无参构造方法 2 参数为姓名、品种的构造方法）
   d.创建测试类，分别创建狗和老鼠的实例化对象，给对象的属性赋值，并且调用对象的吃、叫的方法
 * 
 * 
 */

public interface Animal {

	void eat();
	
	void call();
	
	
}
