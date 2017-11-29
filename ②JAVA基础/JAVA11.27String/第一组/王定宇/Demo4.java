
public class Demo4 {
	
	/*
	 * 4  给定一个由数字组成的字符串,如:"1239586838923173478943890234092",统计出每个数字出现的次数
	 */

	public static void main(String[] args) {
		
		int a=0;
		int b=0;
		int c=0;
		int d=0;
		int e=0;
		int f=0;
		int g=0;
		int h=0;
		int i=0;
		int j=0;
		String str = "1239586838923173478943890234092";
		for(int z = 0;z<str.length();z++){
			if(str.charAt(z)=='1'){
				a++;
			}else if(str.charAt(z)=='2'){
				b++;
			}else if(str.charAt(z)=='3'){
				c++;
			}else if(str.charAt(z)=='4'){
				d++;
			}else if(str.charAt(z)=='5'){
				e++;
			}else if(str.charAt(z)=='6'){
				f++;
			}else if(str.charAt(z)=='7'){
				g++;
			}else if(str.charAt(z)=='8'){
				h++;
			}else if(str.charAt(z)=='9'){
				i++;
			}else{
				j++;
			}
		}
		System.out.println("1有："+a+"个\t");
		System.out.println("2有："+b+"个\t");
		System.out.println("3有："+c+"个\t");
		System.out.println("4有："+d+"个\t");
		System.out.println("5有："+e+"个\t");
		System.out.println("6有："+f+"个\t");
		System.out.println("7有："+g+"个\t");
		System.out.println("8有："+h+"个\t");
		System.out.println("9有："+i+"个\t");
		System.out.println("0有："+j+"个\t");
	}
	
}
