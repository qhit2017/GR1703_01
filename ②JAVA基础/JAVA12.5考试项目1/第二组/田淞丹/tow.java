package tsd;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class tow {
	/*模拟一个高考评分系统，其业务范围包括：
	1	录入考生的高考信息
	2	显示所有考生信息
	3	查询最高分, 包括: 总分最高分 和 单科最高分
	4	退出功能
	 */
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		List<one>list=new ArrayList<one>();
		while(true){
			System.out.println("1录入考生的高考信息,2显示所有考生信息,3查询最高分, 包括: 总分最高分 和 单科最高分4退出");
			int n=sc.nextInt();
			
			if(n==1){
				System.out.println("录入考生的高考信息");
				String a=sc.next();
				String[]arr=a.split(",");
				one b=new one();
				b.setName(arr[0]);
				b.setBianhao(arr[1]);
				b.setYuwen(Integer.parseInt(arr[2]));
				b.setShuxue(Integer.parseInt(arr[3]));
				b.setYingyu(Integer.parseInt(arr[4]));
				b.setChengji(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(b);
				System.out.println("输入完毕");
			
			
			}else	if(n==2){
				System.out.println("显示所有考生信息");
				for(one i:list){
					i.info();
				}
				
			
			}else	if(n==3){
				System.out.println("查询最高分, 包括: 总分最高分 和 单科最高分");
				/*1	打印总分最高分
				2	打印数学最高分
				3	打印语文最高分
				4	打印英语最高分
				5	退出*/
				while(true){
					int z=sc.nextInt();
					if(z==1){
						System.out.println("打印总分最高分");
						int []arr=new int[list.size()];
						for(int g=0;g<list.size();g++){
							arr[g]=list.get(g).getChengji(); 
						}
					
						for(int h=0;h<arr.length-1;h++){
							for(int x=h+1;x<arr.length;x++ ){
								if(arr[h]<arr[x]){
									arr[h]=arr[x];
								}
							}
						}
					System.out.println(arr[0]);
				
					
					
					
					}else if(z==2){
						System.out.println("打印数学最高分");
						int[]arr=new int[list.size()];
						for(int a=0;a<arr.length;a++){
							arr[a]=list.get(a).getShuxue();
						}
						for(int b=0;b<arr.length-1;b++){
							for(int c=b+1;c<arr.length;c++){
								if(arr[b]<arr[c]){
									arr[b]=arr[c];
								}
							}
						
						}
						System.out.println(arr[0]);
					}else if(z==3){
						System.out.println("打印语文最高分");
						int[]arr=new int[list.size()];
						for(int a=0;a<arr.length;a++){
							arr[a]=list.get(a).getYuwen();				}
						for(int b=0;b<arr.length-1;b++){
							for(int c=b+1;c<arr.length;c++){
								if(arr[b]<arr[c]){
									arr[b]=arr[c];
								}
							}
						}
					System.out.println(arr[0]);
					}else if(z==4){
						System.out.println("打印英语最高分");	
						int[]arr=new int[list.size()];
						for(int a=0;a<arr.length;a++){
							arr[a]=list.get(a).getYingyu();
						}
						for(int b=0;b<arr.length-1;b++){
							for(int c=b+1;c<arr.length;c++){
								if(arr[b]<arr[c]){
									arr[b]=arr[c];
								}
							}
						}
					
					System.out.println(arr[0]);
					}else if(z==5){
						System.out.println("退出");
					break;
					}
				
				
				
				
				
				
				
				}
				
				
				
				
				
			
			
			
			
			}else	if(n==4){
				System.out.println("退出");
			break;
			}
		}
	}
}
