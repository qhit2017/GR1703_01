
public class question1 {
	/*
	 * String s="hijavahehejavahejava";�ҳ��ַ������м���java?
	 */
	public static void main(String[] args) {
		
		String s="hijavahehejavahejava";
			
		int count=0;
		
		while(s.length()>=4){
			int a=s.indexOf("java");
			if(a!=-1){
				count++;
				s=s.substring((a+4),(s.length()));	
			}else{
				break;
			}
		}
		System.out.println("�ַ�������"+count+"��java");
		
		
		
		
		
		
	}
	
}
