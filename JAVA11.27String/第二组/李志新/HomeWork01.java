package HomeWork1127;
//String s="hijavahehejavahejava";找出字符串中有几个java?
public class HomeWork01 {
	public static void main(String[] args) {
		String s="hijavahehejavahejava";
			
				
					int num=0;
					for(int i=1;i>=1;i++){
						if(s.indexOf("java")!=-1){
						s=s.substring(s.indexOf("java")+4,s.length() );
						num++;
						}else {
							break;
							
							
						}
						}
				
					
						System.out.println("字符串中共有："+num+"个java");
				}
				
					
			}
		
		
		

			
			
			
		
	


