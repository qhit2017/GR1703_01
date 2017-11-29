import java.util.Scanner;


public class Demo2 {
	
	/*
	 * 2 从键盘接收一个字符串，输出字符串里的大写字母数，小写英文字母数，非英文字母数
	 */
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入一个字符串：");
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
		 System.out.println("小写字母有："+xiao + " " + "大写字母有："+da + " " +"数字有："+shu+"字符有:"+zifu);
	}	
}			

 