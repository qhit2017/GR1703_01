package zuoye;

public class y3 {
	//��дString���toUpperCase����
	
	public static String strings(String str){
		char []arr=str.toCharArray();
		
		for(int t=0;t<arr.length;t++){
			if(arr[t]>='a'&&arr[t]<='z'){
				arr[t]=(char)(arr[t]-32);
			}
		}
		return new String (arr);
		
	}
	//��дString���toLowerCase����
	public static String tolowercase(String str){
		char[]arr =str.toCharArray();
		for(int i=0;i<arr.length;i++){
			if(arr[i]>='A'&&arr[i]<='Z'){
				arr[i]=(char)(arr[i]+32);
				
			}
		}
		return new String (arr);
	}
	//��дString���subString����
	
	
	

}
