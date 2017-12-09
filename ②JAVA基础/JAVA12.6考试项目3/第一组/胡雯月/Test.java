package myproject;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Test {
	public static void main(String[] args) {
		
		List<Shop>list=new ArrayList<Shop>();
		Scanner sc=new Scanner(System.in);
		while(true){
			System.out.println("1添加商品信息2进货3销售4参看库存5退出功能 ");
			int a=sc.nextInt();
			if(a==1){
				System.out.println("请输入商品信息 编号,名称,价格,数量  例如,001,牙膏,20,90");
				String str=sc.next();
				String []arr=str.split(",");
				Shop s=new Shop();
				s.setNumber(arr[0]);
				s.setName(arr[1]);
				s.setPrice(Double.parseDouble(arr[2]));
				s.setQuantity(Integer.parseInt(arr[3]));
				 list.add(s);
				 System.out.println("添加商品成功");
				 
		 }else if(a==2){
			System.out.println("进货 输入商品编号和数量 例如 001,80");
			String str=sc.next();
			String[]arr=str.split(",");
			
			String number=arr[0];
			int quantity=(Integer.parseInt(arr[1])); 
			
			boolean flag=true;
			  for(Shop si:list){
				  if(number.equals(si.getNumber())){
					 si.setQuantity(si.getQuantity()+quantity);
					 flag=false;
					 System.out.println("进货成功 当前商品的数量是："+si.getQuantity());
					 break;
				  }
			  }
			  if(flag){
				  System.out.println("进货失败");
					  
			  }
		}else if(a==3){
			System.out.println("销售 输入商品编号和数量 例如 009 ,90");
			String str=sc.next();
			String []arr=str.split(",");
			
			String number=arr[0];
			int quantity=Integer.parseInt(arr[1]);
			
			boolean flag=true;
			
			for(Shop l:list){
				if(number.equals(l.getNumber())&&quantity<l.getQuantity()){
					l.setQuantity(l.getQuantity()-quantity);
					 flag=false;
					System.out.println("销售成功 当前库存"+l.getQuantity());
					break;
					
				}
			}
			if(flag){
				System.out.println("销售失败");
			}
		
			
		}else if(a==4){
			System.out.println("查看库存 输入商品编号,名称,价格,数量 例如 009,牙刷,20,90");
			for(Shop s:list){
				s.info();
			}
		
		}else if(a==5){
			System.out.println("退出 系统功能");
			break;
		}else{
			System.out.println("您输入的数字不规范 请从新输入");
		
		}
	}
			
			 
			
			
		}
		
	}


