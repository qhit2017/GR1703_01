
public class l1 {
	//1 String s="hijavahehejavahejava";�ҳ��ַ������м���java?
	public static void main(String[] args) {
		String s="hijavahehejavahejava";
		int c=0;
		for(int i=0;i<s.length();i++){
			if(s.indexOf("java")>=0){
				s=s.substring(s.indexOf("java")+4, s.length());
				c++;
			}
		}
		System.out.println("�ַ���"+c+"��java��");
	}

}
