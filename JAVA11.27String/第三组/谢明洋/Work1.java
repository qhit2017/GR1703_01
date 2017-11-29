package homework;

public class Work1 {
	public static void main(String[] args) {
		//1 String s="hijavahehejavahejava";找出字符串中有几个java?
		
	String str="hijavahehejavahejava";
	
	int m=0;
	for(int i=0;i<str.length();i++){
		int t=str.indexOf("java");		
		if(t!=-1){			
			String a=str.substring(t,t+4);			
			System.out.println(a);	
			str=str.substring(t+4, str.length());
			m++;
		}
	}
	System.out.println(m);
	}

}
