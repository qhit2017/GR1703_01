import java.util.Scanner;


public class l2 {
	//�Ӽ��̽���һ���ַ���������ַ�����Ĵ�д��ĸ����СдӢ����ĸ������Ӣ����ĸ��
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("������һ���ַ�����");
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
		System.out.println("��д��ĸ����"+d+",Сд��ĸ����"+e+",��Ӣ����ĸ��"+f);
	}


}
