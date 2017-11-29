import java.util.Scanner;


public class l2 {
	//从键盘接收一个字符串，输出字符串里的大写字母数，小写英文字母数，非英文字母数
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入一个字符串：");
		String n=sc.next();
		String a = "abcdefghijklmnopqrstuvwxyz";
		String b = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		String c = "1234567890";
		int d=0;
		int e=0;
		int f=0;
		for(int i=0;i<n.length();i++){
			if(b.indexOf(n.charAt(i))>=0){
				d++;
			}else if(a.indexOf(n.charAt(i))>=0){
				e++;
			}else if(c.indexOf(n.charAt(i))>=0){
				f++;
			}else{
				f++;
			}
			
			
		}
		System.out.println("大写字母数是"+d+",小写字母数是"+e+",非英文字母数"+f);
	}


}
