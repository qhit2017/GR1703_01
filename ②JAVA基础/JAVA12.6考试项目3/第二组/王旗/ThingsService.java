package Day2;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ThingsService {
	public static void main(String[] args) {
		
		List<ThingsInfo> list=new ArrayList<ThingsInfo>();
		List<ThingsInfo> list1=new ArrayList<ThingsInfo>();
		List<ThingsInfo> list2=new ArrayList<ThingsInfo>();
		Scanner sc=new Scanner(System.in);
		
		while(true){
			System.out.println("请输入操作数字进行操作：1.新增商品2.进货3.销售4.参看库存5.进货记录6.出货记录7.退出");
			int n=sc.nextInt();
			if(n==1){
				System.out.println("请输入需要添加的商品：编号,名称,价格,数量。如：001,红茶,2,100");
				ThingsInfo ti=new ThingsInfo();
				String str=sc.next();
				String[] arr=str.split(",");
				ti.setNum(arr[0]);
				ti.setName(arr[1]);
				ti.setPrice(Double.parseDouble(arr[2]));
				ti.setCount(Integer.parseInt(arr[3]));
				list.add(ti);
				System.out.println("添加成功！");
			}else if(n==2){
				System.out.println("请输入进货的商品编号和其需要添加的数量：如：001,200");
				String str=sc.next();
				String[] arr=str.split(",");
				String name="";
				ThingsInfo ti1=new ThingsInfo();
				
				boolean flag=true;
				for(ThingsInfo i:list){
					if(arr[0].equals(i.getNum())){	
						name=i.getName();
						i.setCount((i.getCount()+Integer.parseInt(arr[1])));
						flag=false;
						System.out.println("进货完成！"+"库存尚有："+i.getCount());
						break;
					}if(flag){						
						System.out.println("进货失败！");
						break;
					}
				}			
			    ti1.setName(name);
				ti1.setCount(Integer.parseInt(arr[1]));
				list1.add(ti1);
			}else if(n==3){
				System.out.println("请输入需要销售的商品编号和其数量：如：002,2");
				String str=sc.next();
				String[] arr=str.split(",");
				ThingsInfo ti2=new ThingsInfo();
				String name="";
				boolean flag=true;
				for(ThingsInfo i:list){
					if(arr[0].equals(i.getNum())){	
						name=i.getName();
						i.setCount((i.getCount()-Integer.parseInt(arr[1])));
						flag=false;
						System.out.println("销售完成！"+"库存尚有："+i.getCount());
						break;
					}if(flag){
						System.out.println("销售失败!");
						break;
					}
				}
			    ti2.setName(name);
				ti2.setCount(Integer.parseInt(arr[1]));
				list2.add(ti2);
			}else if(n==4){
				System.out.println("库存：");
				for(ThingsInfo i:list){
					i.info();
				}
			}else if(n==5){
				System.out.println("进货记录：");
				for(ThingsInfo i:list1){
					i.come();
				}
			}else if(n==6){
				System.out.println("出货记录！");
				for(ThingsInfo i:list2){
					i.out();
				}	
			}else if(n==7){
				System.out.println("退出完成！");
				break;
			}
			else{
				System.out.println("您输入的操作不规范，请重新输入，谢谢！");
			}
			
				
		}
	}

}
