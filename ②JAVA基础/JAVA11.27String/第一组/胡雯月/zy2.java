

public class zy2 {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("������һ���ַ�����");
		String str = sc.next();
		String a = "abcdefghijklmnopqrstuvwxyz";
		String b = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		String c = "1234567890";
		int A = 0;
		int B = 0;
		int C = 0;
		for(int i=0;i<str.length();i++){
			if(a.indexOf(str.charAt(i))>=0){
				A++;
			}else if(b.indexOf(str.charAt(i))>=0){
				B++;
			}else if(c.indexOf(str.charAt(i))>=0){
				C++;
			}
		}
		System.out.println("��д��ĸ��"+A+"��."+"\n"+"Сд��ĸ��"+B+"��."+"\n"+"������"+C+"��.");
		
	}

}
