
public class question4 {

	/*
	 * 4  ����һ����������ɵ��ַ���,��:"1239586838923173478943890234092",ͳ�Ƴ�ÿ�����ֳ��ֵĴ���
	 */
	public static void main(String[] args) {
		int count[]=new int[10];
		String str ="112254654864218643344556677889900";
		for(int i=0;i<str.length();i++){
			String a=""+str.charAt(i);
			if(a.equals("0")){
				count[0]++;
			}else if(a.equals("1")){
				count[1]++;
			}else if(a.equals("2")){
				count[2]++;
			}else if(a.equals("3")){
				count[3]++;
			}else if(a.equals("4")){
				count[4]++;
			}else if(a.equals("5")){
				count[5]++;
			}else if(a.equals("6")){
				count[6]++;
			}else if(a.equals("7")){
				count[7]++;
			}else if(a.equals("8")){
				count[8]++;
			}else if(a.equals("9")){
				count[9]++;
			}
				
		}
		for(int i=0;i<count.length;i++){
			System.out.println(i+"���ֵĴ�����"+count[i]);
		}
		
		
		
		
		
		
		
	}
	
}
