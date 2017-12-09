package www;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import qqq.list;

public class w1 {
        
	 public static void main(String[] args) {
		 
		 List <w2> list = new ArrayList<w2>();
		
		  Scanner sc =new Scanner(System.in);
		 
		 while(true){
			 System.out.println("1.录入考生的高考信息2.显示所有考生信息3.查询最高分4.退出");
			  int num =  sc.nextInt();
			 if (num==1) {
				 System.out.println("请输入考生信息   格式为:姓名,编号,语文,数学,英语成绩  例如：张三,1010,98,78,98");
				    String str = sc.next();
				    String [] arr = str.split(",");
				        w2 w = new w2();
				        w.setName(arr[0]);
				        w.setBh(arr[1]);
				        w.setYw(Integer.parseInt(arr[2]));
				        w.setSx(Integer.parseInt(arr[3]));
				        w.setYy(Integer.parseInt(arr[4]));
				        w.setZf(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				        list.add(w);
				        System.out.println("录取成功");
			} else if(num==2){
				System.out.println("所有考生信息为:");
				 for(w2 w:list){
					 w.inof();
					
				}
			} else if(num==3){
				System.out.println("1.打印总分最高分2.打印数学最高分3.打印语文最高分4.打印英语最高分5.退出");
				int i = sc.nextInt();
				while(true){
					int max = 0;
					if (i==1) {
						for(w2 w:list){
							if(max<w.getZf()){
								max=w.getZf();
							}
							System.out.println("总分最高分为："+max);
						}
						
						
						
						
					} else if(i==2){
						int q = 0;
						for(w2 w:list){
							if (q<w.getSx()) {
								q=w.getSx();
								
							}
							System.out.println("数学最高分为："+q);
						}
						
						
						

					} else if(i==3){
						int e = 0;
						 for(w2 w:list){
							 if (e<w.getYw()) {
								 e=w.getYw();
								
							}
							 System.out.println("语文最高分为:"+e);
						 }
						
					} else if(i==4){
						System.out.println();
						
						
						
					} else if(i==5){
						int r = 0;
						for(w2 w:list){
							if (r<w.getYy()) {
								r=w.getYy();
							}
							System.out.println("英语最高分为:"+r);
						}
						
					}
					
				}
				
				
				
			 
		    } else if(num==4){
		    	System.out.println("退出");
		    	
		    } else{
		    	System.out.println("您输入的数字有误,请重新输入.");
		 
		 
	  }
   } 
    }
}