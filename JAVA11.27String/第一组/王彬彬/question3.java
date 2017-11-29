
public class question3 {

	/*
	 * 3 编程. 已知字符串："this is a test of java".

按要求执行以下操作：

(1) 统计该字符串中字母s出现的次数

(2) 返回"test"所在的编号

(3) 将本字符串复制到一个字符数组Char[] str中.

(4) 将字符串中每个单词的第一个字母变成大写， 输出到控制台。

(5) 将该字符串的倒叙输出。

(6) 将本字符串转换成一个字符串数组，要求每个数组元素都是一个有意义的英文单词,并输出到控制台
	 */
	public static void main(String[] args) {
		
		String str1="this is a test of java";
		
	//(1) 统计该字符串中字母s出现的次数
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
			System.out.println("字符串中有"+count+"个s");
	//	 返回"test"所在的编号
		System.out.println("test所在的编号是："+str1.indexOf("test"));
		
	//(3) 将本字符串复制到一个字符数组Char[] str中.	
		char str[]=new char[str1.length()];
		for(int i=0;i<str.length;i++){
			str[i]= str1.charAt(i);
			System.out.print(str[i]+"  ");
		}
		System.out.println();
	//(4)	 将字符串中每个单词的第一个字母变成大写， 输出到控制台。
		String str3[]= str1.split(" ");
		for(int i=0;i<str3.length;i++){
			String a =""+str3[i].charAt(0);
			String b =str3[i].substring(1, str3[i].length());
			a=a.toUpperCase();
			str3[i]=a+b;
			System.out.print(str3[i]+" ");
		}
		System.out.println();
	//(5)	将该字符串的倒叙输出。
		for(int i=str1.length()-1;i>=0;i--){
			System.out.print(str[i]);
		}
		System.out.println();
	//	(6) 将本字符串转换成一个字符串数组，要求每个数组元素都是一个有意义的英文单词,并输出到控制台	
		String str4[]= str1.split(" ");
		for(String i:str4){
			System.out.println(i);
		}
		
		
		
		
		
		
		
		
	}
}
