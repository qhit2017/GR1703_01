import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class TextTxl {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		List<Txl> list = new ArrayList<Txl>();
		Infos i = new IndexImp();
		
		while(true){
			System.out.println("1.录入通讯录信息  2.显示所有通讯录信息  3.姓名搜索  4.性别搜索  5.电话搜索  6.退出功能");
			int n = sc.nextInt();
			if(n==1){
				//录入通讯录信息
				i.tianjia(sc, list);
			}else if(n==2){
				//显示所有通讯录信息
				i.chaxun(list);
			}else if(n==3){
				//姓名搜索
				i.namechaxun(sc, list);
			}else if(n==4){
				//性别搜索
				i.sexchaxun(sc, list);
			}else if(n==5){
				//电话搜索
				i.nemchaxun(sc, list);
			}else if(n==6){
				System.out.println("本次服务结束！");
				break;
			}else{
				System.out.println("您输入的指令错误！");
			}
		}
		
		
	}

}
