package hw1128;

public class A03 {
	/*
	 * 编程. 已知字符串："this is a test of java".
	(1) 统计该字符串中字母s出现的次数
	 * (2) 返回"test"所在的编号

(3) 将本字符串复制到一个字符数组Char[] str中.

(4) 将字符串中每个单词的第一个字母变成大写， 输出到控制台。

(5) 将该字符串的倒叙输出。

(6) 将本字符串转换成一个字符串数组，要求每个数组元素都是一个有意义的英文单词,并输出到控制台
	 * 
	 */
	
	public static void main(String[] args) {
		String str="this is a test of java";
		System.out.println("第二小题：");
		System.out.println("test所在的编号是"+str.indexOf("test"));
		System.out.println("第一小题：");
		int a=0;
		for(int i=0;i<str.length();i++){
			if(str.indexOf("s")>=0){
				str=str.substring(str.indexOf("s")+1,str.length());
				a++;
			}
		}
		System.out.println("字母s出现的次数是"+a);
		System.out.println("第三小题：");
		char str2[]=new char[str.length()];
		for(int i=0;i<str.length();i++){
			str2[i]=str.charAt(i);
		}
		System.out.println("第四小题：");
		str2[0]='T';
		str2[5]='I';
		str2[8]='A';
		str2[10]='T';
		str2[15]='O';		
		str2[18]='J';		
		for(int b=0;b<str2.length;b++){
			
			System.out.print(str2[b]);
		}
		System.out.println("第五小题：");
		for(int c=str2.length-1;c>=0;c++){
			System.out.println(str2[c]);
		}
		
		
		
		
		
	}

}
