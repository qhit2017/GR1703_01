

public class zy2 {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入一个字符串：");
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
		System.out.println("大写字母有"+A+"个."+"\n"+"小写字母有"+B+"个."+"\n"+"数字有"+C+"个.");
		
	}

}
