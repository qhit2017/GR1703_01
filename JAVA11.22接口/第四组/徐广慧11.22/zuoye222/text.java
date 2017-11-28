package zuoye222;

public class text {

	
	public static void main(String[] args) {
		dog a =new dog();
		a.setAge(18);
		a.setColor("蓝色");
		a.setPinzhong("狼");
		a.setName("小蓝");
		a.call();
		a.eat();
		a.info(); 
		
		mouse b=new  mouse();
		b.setJitiaotui(8);
		b.setName("小火");
		b.setPinzhong("南极鼠");
		b.info();
		
		b.eat();
		b.call();
	}
}
