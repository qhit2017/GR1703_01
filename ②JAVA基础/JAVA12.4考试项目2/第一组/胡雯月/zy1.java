package zuoye;

public class zy1 {
	public static int leng(String str){
		int t=0;
		for(int i=0;i>=0;i++){
			char[]arr=str.toCharArray();
			if(str.indexOf(arr[i])!=-1){
				t++;
			}
		}
		return t;
	}

}
