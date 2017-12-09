import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class A {

	public static void main(String[] args) {
		
		
		List<MailList> list = new ArrayList<MailList>();
		Scanner sc = new Scanner(System.in);
		
		while(true){
			System.out.println("请按键 1.存储信息 2.查询信息 3.按姓名搜索 4.按性别搜索 5.按电话号码搜索 6.退出" );
			int n =sc.nextInt();
			if(n==1){
				System.out.println("请输入姓名，性别，电话，如:张三,男,34512");
				MailList ml =new MailList();
				
				String str = sc.next();
				String[] arr =str.split(",");
				
				ml.setName(arr[0]);
				ml.setSex(arr[1].charAt(0));
				ml.setPhoneNum(arr[2]);
				list.add(ml);
				System.out.println("添加成功");
				
				
			}else if(n==2){
				for(MailList i:list){
					i.info();
				}
				
			}else if(n==3){
				System.out.println("请输入姓名");
				String name =sc.next();
				for(MailList ml:list){
					if(name.equals(ml.getName())){
						ml.info();
						break;
					}
				} 
				
			}else if(n==4){
				System.out.println("请输入性别");
				Character sex =sc.next().charAt(0);
				for(MailList ml:list){
					if(sex.equals(ml.getSex())){
						ml.info();
						
					}
				}
				
			}else if(n==5){
				System.out.println("请输入电话号码");
				String dianhua=sc.next();
				for(MailList ml:list){
					if(dianhua.equals(ml.getPhoneNum())){
						ml.info();
						break;
					}
				}
				
			}else if(n==6){
				System.out.println("结束");
				break;
				
			}else{
				System.out.println("请按规则输入");
			}
		}
		
		
		
		
	}
}
