
public class Demo3 {
	
	/*
3 ���. ��֪�ַ�����"this is a test of java".

��Ҫ��ִ�����²�����

(1) ͳ�Ƹ��ַ�������ĸs���ֵĴ���

(2) ����"test"���ڵı��

(3) �����ַ������Ƶ�һ���ַ�����Char[] str��.

(4) ���ַ�����ÿ�����ʵĵ�һ����ĸ��ɴ�д�� ���������̨��

(5) �����ַ����ĵ��������

(6) �����ַ���ת����һ���ַ������飬Ҫ��ÿ������Ԫ�ض���һ���������Ӣ�ĵ���,�����������̨
	 */
	public static void main(String[] args) {
		
		String s = "this is a test of java";
		
		int c =0;
		for(int i = 1;i<s.length();i++){
			if(s.indexOf("s")>=0){
				s=s.substring(s.indexOf("s")+1, s.length());
				c++;
			}
		}
		System.out.println(c);	
			
		String a = "this is a test of java";
		int t1 = a.indexOf("test");
		System.out.println(t1);
		
	
		char[] arr = new char[a.length()];
		for(int i = 0;i<arr.length;i++){
			arr[i]=a.charAt(i);
				System.out.print(arr[i]);
			}
		System.out.println();

		String b = a.replace("this is a test of java", "This Is A Test Of Java");
		System.out.print(b);

		System.out.println();
		for(int i =arr.length-1;i>=0;i--){
			System.out.print(arr[i]);
	
			}
		System.out.println();
		String[] arr1 = a.split(" ");
		for(String str:arr1){
			System.out.println(str);
		}
		}
}
