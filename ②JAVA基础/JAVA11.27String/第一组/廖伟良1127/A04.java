package hw1128;

public class A04 {
	//����һ����������ɵ��ַ���,��:"1239586838923173478943890234092",ͳ�Ƴ�ÿ�����ֳ��ֵĴ���
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
		System.out.println("0������"+j+"��.");
		System.out.println("1������"+a+"��.");
		System.out.println("2������"+b+"��.");
		System.out.println("3������"+c+"��.");
		System.out.println("4������"+d+"��.");
		System.out.println("5������"+e+"��.");
		System.out.println("6������"+f+"��.");
		System.out.println("7������"+g+"��.");
		System.out.println("8������"+h+"��.");
		System.out.println("9������"+i+"��.");
	}
}
