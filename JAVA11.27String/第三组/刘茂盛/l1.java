
public class l1 {
	//1 String s="hijavahehejavahejava";找出字符串中有几个java?
	public static void main(String[] args) {
		String s="hijavahehejavahejava";
		int c=0;
		for(int i=0;i<s.length();i++){
			if(s.indexOf("java")>=0){
				s=s.substring(s.indexOf("java")+4, s.length());
				c++;
			}
		}
		System.out.println("字符有"+c+"个java！");
	}

}
