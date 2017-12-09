package today126;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
/*
模拟一个进销存系统，其业务范围包括：
1   新增商品
2   进货
3   销售
4   参看库存
5   退出功能
*/
public class text {

	public static void main(String[] args) {
		List<shangpin> list=new ArrayList<shangpin>();
		Scanner sc= new Scanner(System.in);
		System.out.println("1   新增商品  2 进货  3   销售4   参看库存  5   退出功能");
		while(true){
			int n=sc.nextInt();
			if(n==1){
				System.out.println("新增商品：例如：方便面,编号：1,价钱1.8,数量100");
				String str=sc.next();
				String[]arr=str.split(",");
				shangpin a=new shangpin();
				a.setName(arr[0]);
				a.setBianhao(arr[1]);
				a.setMoney(Double.parseDouble(arr[2]));
				a.setNumber(Integer.parseInt(arr[3]));
				list.add(a);
				System.out.println("添加成功");
			}else	if(n==2){
				System.out.println("进货");
				System.out.println("编号,进货数量");
				String c=sc.next();
				String[]arr=c.split(","); 
				boolean fals=true;
				for(int b=0;b<list.size();b++){
					shangpin a=list.get(b);
					if(arr[0].equals(a.getBianhao())){
					a.setNumber(a.getNumber()+Integer.parseInt(arr[1]));
					fals=false;
					System.out.println("进货成功");
					break;
					}
				
				
				}
				if(fals){
					System.out.println("进货不成功");
				}
			}else	if(n==3){
				System.out.println("销售");
				System.out.println("编号,销售数量");
				String c=sc.next();
				String[]arr=c.split(","); 
				boolean fals =true;
				for(int b=0;b<list.size();b++){
					shangpin a=list.get(b);
					if(arr[0].equals(a.getBianhao())&&a.getNumber()>Integer.parseInt(arr[1])){
						a.setNumber(a.getNumber()-Integer.parseInt(arr[1]));
						fals=false;
						System.out.println("添加成功");
						break;
					}
				}
				if(fals){
					System.out.println("销售不成功");
				}
			
			}else	if(n==4){
				System.out.println("参看库存");
				for(int b=0;b<list.size();b++){
					shangpin a=list.get(b);
					a.info();
				}
			
			
			}else	if(n==5){
				System.out.println("退出功能");
				break;
			}else if(n==6){
				System.out.println("进货清单");
				
				
			}else if(n==7){
				System.out.println("销售清单");
		
			
			}
			
		
		
		
		
		
		}
		
		
		
		
		
	}
}
