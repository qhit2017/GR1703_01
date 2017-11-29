package HomeWork1127;

public class HomeWork04 {
	
	public static void main(String[] args) {
		int a=0;
		int b=0;
		int c=0;
		int d=0;
		int e=0;
		int f=0;
		int g=0;
		int h=0;
		int k=0;
		int j=0;
	
			String s="1239586838923173478943890234092";
				for(int i=0;i<s.length();i++){
					if(s.charAt(i)=='1'){
						a++;
					}else if(s.charAt(i)=='2'){
						b++;
					}else if(s.charAt(i)=='3'){
						c++;
					}else if(s.charAt(i)=='4'){
						d++;
					}else if(s.charAt(i)=='5'){
						e++;
					}else if(s.charAt(i)=='6'){
						f++;
					}else if(s.charAt(i)=='7'){
						g++;
					}else if(s.charAt(i)=='8'){
						h++;
					}else if(s.charAt(i)=='9'){
						k++;
					}else if(s.charAt(i)=='0'){
						j++;
					}
	
	}
				
				System.out.println("字符串为1输出的共有："+a+"个");
				System.out.println("字符串为2输出的共有："+b+"个");
				System.out.println("字符串为3输出的共有："+c+"个");
				System.out.println("字符串为4输出的共有："+d+"个");
				System.out.println("字符串为5输出的共有："+e+"个");
				System.out.println("字符串为6输出的共有："+f+"个");
				System.out.println("字符串为7输出的共有："+g+"个");
				System.out.println("字符串为8输出的共有："+h+"个");
				System.out.println("字符串为9输出的共有："+k+"个");
				System.out.println("字符串为0输出的共有："+j+"个");
				
}
}