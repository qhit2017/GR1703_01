package game;
//����һ���ַ��� String str = "1290812479120741"; ��������ֳ��ֵĴ���
public class game8 {
	
	public static void main(String[] args) {
		String str = "1290812479120741";

		for(int i=0;i<=9;i++){
			int count=0;
			for(int m=0;m<str.length();m++){
				int a =Integer.parseInt(str.charAt(m)+"");
				if(i==a){
					count++;
				}
			}
			System.out.println(i+"���ֵĴ����ǣ�"+count);
		}
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
}
