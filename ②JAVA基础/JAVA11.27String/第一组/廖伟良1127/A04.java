package hw1128;

public class A04 {
	//给定一个由数字组成的字符串,如:"1239586838923173478943890234092",统计出每个数字出现的次数
	public static void main(String[] args) {

		String str = "1239586838923173478943890234092";
		int a =0;
		int b =0;
		int c =0;
		int d =0;
		int e =0;
		int f =0;
		int g =0;
		int h =0;
		int i =0;
		int j =0;
		for(int w=0;w<str.length();w++){
			if(str.charAt(w)=='1'){
				a++;
			}else if(str.charAt(w)=='2'){
				b++;
			}else if(str.charAt(w)=='3'){
				c++;
			}else if(str.charAt(w)=='4'){
				d++;
			}else if(str.charAt(w)=='5'){
				e++;
			}else if(str.charAt(w)=='6'){
				f++;
			}else if(str.charAt(w)=='7'){
				g++;
			}else if(str.charAt(w)=='8'){
				h++;
			}else if(str.charAt(w)=='9'){
				i++;
			}else if(str.charAt(w)=='0'){
				j++;
			}
		}
		System.out.println("0出现了"+j+"次.");
		System.out.println("1出现了"+a+"次.");
		System.out.println("2出现了"+b+"次.");
		System.out.println("3出现了"+c+"次.");
		System.out.println("4出现了"+d+"次.");
		System.out.println("5出现了"+e+"次.");
		System.out.println("6出现了"+f+"次.");
		System.out.println("7出现了"+g+"次.");
		System.out.println("8出现了"+h+"次.");
		System.out.println("9出现了"+i+"次.");
	}
}
