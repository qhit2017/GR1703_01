package Work;

public class work2 {

	public static void main(String[] args) {
		/*
		 * 编程题3：

			打印九九乘法表

		 */
		
		for(int i=1; i<=9; i++){
			for(int j=1; j<=i; j++){
				System.out.print(j+"*"+i+"="+j*i+"\t");
			}
			System.out.println();
		}
		
		
		
	}
}
