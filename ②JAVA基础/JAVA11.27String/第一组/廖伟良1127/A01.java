
public class A01 {
	/*
	 * String s="hijavahehejavahejava";找出字符串中有几个java?
	 */
	public static void main(String[] args) {
		String s = "hijavahehejavahejajavavajava";
		String findStr = "java";
		int javaCount = 0;
		for(int i=0;i<=s.length()-findStr.length();i++){
		    if(s.substring(i,i+findStr.length()).equalsIgnoreCase(findStr)){
		        javaCount++;
		    }
		}
		System.out.println(javaCount);
	}
}
