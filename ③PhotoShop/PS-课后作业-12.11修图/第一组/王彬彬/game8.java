package game;
//定义一个字符串 String str = "1290812479120741"; 求各个数字出现的次数
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
			System.out.println(i+"出现的次数是："+count);
		}
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
}
