import java.util.Scanner;


public class Demo2 {
	
	/*
	 * 2 �Ӽ��̽���һ���ַ���������ַ�����Ĵ�д��ĸ����СдӢ����ĸ������Ӣ����ĸ��
	 */
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("������һ���ַ�����");
		String str = sc.next();
		
		int xiao = 0, 
			da = 0, 
			shu = 0;
		int zifu = 0;
		
		for(int i = 0; i < str.length(); i++){
			 	char c = str.charAt(i);
		  if(c>='a' && c<='z'){
				xiao++;
		  }else if(c>='A' && c<='Z'){
			  	da++;
		  }else if(shu<10){
			  	shu++;                         
		  }else{
			  zifu++;
		  }
	 }
		 System.out.println("Сд��ĸ�У�"+xiao + " " + "��д��ĸ�У�"+da + " " +"�����У�"+shu+"�ַ���:"+zifu);
	}	
}			

 