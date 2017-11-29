package 作业;

public class Dome1 {
		public static void main(String[] args) {
		
		String s="hijavahehejavahejava";
		int c = 0;
		for(int a=1;a>=1;a++){
			if(s.indexOf("java")>=0){
				s = s.substring(s.indexOf("java")+4, s.length());
				c++;
			}
		}
		System.out.println("此字符串有"+c+"个java.");
	}
}
