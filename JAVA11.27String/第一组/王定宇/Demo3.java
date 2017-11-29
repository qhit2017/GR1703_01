
public class Demo3 {
	
	/*
3 编程. 已知字符串："this is a test of java".

按要求执行以下操作：

(1) 统计该字符串中字母s出现的次数

(2) 返回"test"所在的编号

(3) 将本字符串复制到一个字符数组Char[] str中.

(4) 将字符串中每个单词的第一个字母变成大写， 输出到控制台。

(5) 将该字符串的倒叙输出。

(6) 将本字符串转换成一个字符串数组，要求每个数组元素都是一个有意义的英文单词,并输出到控制台
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
