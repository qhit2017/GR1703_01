

public class Work3 {
	//����һ���ַ��� String str = "1290812479120741"; 
	//��������ֳ��ֵĴ���
	public static void main(String[] args) {
		String str="1355642132654566";
		
		for(int t=0;t<=9;t++){
			String a = str+"a";
			String arr[]=a.split(""+t);
			System.out.println(t+"���ֵĴ�����"+(arr.length-1));
		}
	}




}
