
public class question3 {

	/*
	 * 3 ���. ��֪�ַ�����"this is a test of java".

��Ҫ��ִ�����²�����

(1) ͳ�Ƹ��ַ�������ĸs���ֵĴ���

(2) ����"test"���ڵı��

(3) �����ַ������Ƶ�һ���ַ�����Char[] str��.

(4) ���ַ�����ÿ�����ʵĵ�һ����ĸ��ɴ�д�� ���������̨��

(5) �����ַ����ĵ��������

(6) �����ַ���ת����һ���ַ������飬Ҫ��ÿ������Ԫ�ض���һ���������Ӣ�ĵ���,�����������̨
	 */
	public static void main(String[] args) {
		
		String str1="this is a test of java";
		
	//(1) ͳ�Ƹ��ַ�������ĸs���ֵĴ���
			int count=0;
			String str2=str1;
			while(str2.length()>=1){
				int a=str2.indexOf("s");
				if(a!=-1){
				count++;
				str2=str2.substring((a+1),(str2.length()));	
				}else{
					break;
				}
			}
			System.out.println("�ַ�������"+count+"��s");
	//	 ����"test"���ڵı��
		System.out.println("test���ڵı���ǣ�"+str1.indexOf("test"));
		
	//(3) �����ַ������Ƶ�һ���ַ�����Char[] str��.	
		char str[]=new char[str1.length()];
		for(int i=0;i<str.length;i++){
			str[i]= str1.charAt(i);
			System.out.print(str[i]+"  ");
		}
		System.out.println();
	//(4)	 ���ַ�����ÿ�����ʵĵ�һ����ĸ��ɴ�д�� ���������̨��
		String str3[]= str1.split(" ");
		for(int i=0;i<str3.length;i++){
			String a =""+str3[i].charAt(0);
			String b =str3[i].substring(1, str3[i].length());
			a=a.toUpperCase();
			str3[i]=a+b;
			System.out.print(str3[i]+" ");
		}
		System.out.println();
	//(5)	�����ַ����ĵ��������
		for(int i=str1.length()-1;i>=0;i--){
			System.out.print(str[i]);
		}
		System.out.println();
	//	(6) �����ַ���ת����һ���ַ������飬Ҫ��ÿ������Ԫ�ض���һ���������Ӣ�ĵ���,�����������̨	
		String str4[]= str1.split(" ");
		for(String i:str4){
			System.out.println(i);
		}
		
		
		
		
		
		
		
		
	}
}
