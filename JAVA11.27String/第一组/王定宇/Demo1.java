
public class Demo1 {
	
	/*
	 * 1 String s="hijavahehejavahejava";�ҳ��ַ������м���java?
	 */

	public static void main(String[] args) {
		
		String s="hijavahehejavahejava";
			
		int c = 0;	
		for(int a =1;a>=1;a++){
			int b=s.indexOf("java");
			if(b>=0){
				s=s.substring(s.indexOf("java")+4, s.length());
					//��ȡ             //��h ǰ�� hijava ����
				c++;
			}
		}
		System.out.println(c);
	}
	
}
