

public class zy1 {

	public static void main(String[] args) {
		
		String s="hijavahehejavahejava";
		int b = 0;
		for(int a=1;a>=1;a++){
			if(s.indexOf("java")>=0){
				s = s.substring(s.indexOf("java")+4, s.length());
				b++;
			}
		}
		System.out.println("´Ë×Ö·û´®ÓÐ"+b+"¸öjava.");
	}
	
}
