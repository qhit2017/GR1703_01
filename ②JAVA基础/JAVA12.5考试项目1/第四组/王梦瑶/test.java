package xiangm2;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class test {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<massage> list =new ArrayList<massage>();
		massagejei b=new massageshi();
		while(true){
			System.out.println("1.录入考生的高考信息2.显示所有考生信息3.查询最高分, 包括: 总分最高分 和 单科最高分4退出程序");
			int t=sc.nextInt();
			if(t==1){
				b.add(list, sc);
				
			}else if(t==2){
				b.fiandall(list);
				
			}else if(t==3){
				b.fiandzui(list, sc);
			}else if(t==4){
				
				System.out.println("退出功能");
				break;
			}else if(t==5){
				System.out.println("你输入的数字不规范");
			}
		}
				 
	}

}
