
public class Demo4 {
	
	/*
	 * 4  ����һ����������ɵ��ַ���,��:"1239586838923173478943890234092",ͳ�Ƴ�ÿ�����ֳ��ֵĴ���
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
		System.out.println("1�У�"+a+"��\t");
		System.out.println("2�У�"+b+"��\t");
		System.out.println("3�У�"+c+"��\t");
		System.out.println("4�У�"+d+"��\t");
		System.out.println("5�У�"+e+"��\t");
		System.out.println("6�У�"+f+"��\t");
		System.out.println("7�У�"+g+"��\t");
		System.out.println("8�У�"+h+"��\t");
		System.out.println("9�У�"+i+"��\t");
		System.out.println("0�У�"+j+"��\t");
	}
	
}
