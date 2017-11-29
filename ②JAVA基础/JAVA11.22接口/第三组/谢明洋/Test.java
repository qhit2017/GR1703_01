package homework;

public class Test {
	public static void main(String[] args) {
		
		zhengfangxing z=new zhengfangxing();
		
		z.setBianzhang(4);
		z.setZhouchang(16);
		z.setMianji(16);
		z.L();
		z.S();
		
		TiXing t=new TiXing();
		
		t.setUpl(3);
		t.setDownl(4);
		t.setH(6);
		t.setZhouchang(21);
		t.setMianji(38);
		
		t.L();
		t.S();
	}

}