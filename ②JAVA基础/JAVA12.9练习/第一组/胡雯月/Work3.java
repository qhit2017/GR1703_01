

public class Work3 {
	//定义一个字符串 String str = "1290812479120741"; 
	//求各个数字出现的次数
	public static void main(String[] args) {
		String str="1355642132654566";
		
		for(int t=0;t<=9;t++){
			String a = str+"a";
			String arr[]=a.split(""+t);
			System.out.println(t+"出现的次数是"+(arr.length-1));
		}
	}




}
