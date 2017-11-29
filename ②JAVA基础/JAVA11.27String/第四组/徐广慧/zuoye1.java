package zuoye27;

public class zuoye1 {

	//String s="hijavahehejavahejava";找出字符串中有几个java?
	public static void main(String[] args) {
		String s="hijavahehejavahejava";
		int b=0;
		for(int a=0;a>=0;a++){
			if(s.indexOf("java")>=0){
			s=	s.substring(s.indexOf("java")+4,s.length());
			b++;	
			}	
	
		
		}
		System.out.println(b);
		
		
		
	}	
		
		
		
		
		










}
