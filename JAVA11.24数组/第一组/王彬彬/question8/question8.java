package question8;

import java.util.Random;

/*
 * 扩展题：
 (1)写一个方法要求实现斗地主游戏发牌过程，打印底牌和三个玩家的牌
 (2)统计三个玩家的炸弹数量
 (3)好牌：有炸弹或者有1个王两个2或者有3个2
 中等：有一个王一个2或者两个2
 差牌：其他情况都是差牌
 输出三个玩家牌的级别

 */
public class question8 {

	public void fapai() {

		String[] arr = { "1", "1", "1", "1", "3", "3", "3", "3", "5", "5", "5",
				"5", "4", "4", "4", "4", "9", "9", "9", "9", "小鬼", "6", "6",
				"6", "6", "2", "2", "2", "2", "大鬼", "K", "K", "K", "K", "8",
				"8", "8", "8", "Q", "Q", "Q", "Q", "J", "J", "J", "J", "7",
				"7", "7", "7", "10", "10", "10", "10", };

		for (int a = 0; a < arr.length; a++) {
			for (int b = 0; b < arr.length; b++) {
				Random r = new Random();
				int m = r.nextInt(2);
				if (m != 1) {
					String t = arr[a];
					arr[a] = arr[b];
					arr[b] = t;
				}
			}
		}

		String arr1[] = new String[17];
		String arr2[] = new String[17];
		String arr3[] = new String[20];

		for (int i = 0; i < arr.length; i++) {
			if (i < 17) {
				arr1[i] = arr[i];
			} else if (i < 34) {
				arr2[i - 17] = arr[i];
			} else {
				arr3[i - 34] = arr[i];
			}
		}
		
		for(int y=0;y<arr1.length-1;y++){
			for(int u=y+1;u<arr1.length;u++){
				if(arr1[y].equals("大鬼")){
					String a1=arr1[y];
					arr1[y]=arr1[16];
					arr1[16]=a1;
				}else if(arr1[y].equals("小鬼")){
					if(!arr1[u].equals("大鬼")&&!arr1[u].equals("小鬼")){
					String a2=arr1[y];
					arr1[y]=arr1[u];
					arr1[u]=a2;
					}
				}else if(arr1[y].equals("K")){
					if(!arr1[u].equals("大鬼")&&!arr1[u].equals("小鬼")&&!arr1[u].equals("K")){
						String a3=arr1[y];
						arr1[y]=arr1[u];
						arr1[u]=a3;
					}
				}else if(arr1[y].equals("Q")){
					if(!arr1[u].equals("大鬼")&&!arr1[u].equals("小鬼")&&!arr1[u].equals("K")&&!arr1[u].equals("Q")){
						String a4=arr1[y];
						arr1[y]=arr1[u];
						arr1[u]=a4;
					}
				}else if(arr1[y].equals("J")){
					if(!arr1[u].equals("大鬼")&&!arr1[u].equals("小鬼")&&!arr1[u].equals("K")&&!arr1[u].equals("Q")&&!arr1[u].equals("J")){
						String a5=arr1[y];
						arr1[y]=arr1[u];
						arr1[u]=a5;
					}
				}else if(arr1[y].equals("10")){
					if(!arr1[u].equals("大鬼")&&!arr1[u].equals("小鬼")&&!arr1[u].equals("K")&&!arr1[u].equals("Q")&&!arr1[u].equals("J")&&!arr1[u].equals("10")){
						String a6=arr1[y];
						arr1[y]=arr1[u];
						arr1[u]=a6;
					}
				}else if(arr1[y].equals("9")){
					if(!arr1[u].equals("大鬼")&&!arr1[u].equals("小鬼")&&!arr1[u].equals("K")&&!arr1[u].equals("Q")&&!arr1[u].equals("J")&&!arr1[u].equals("10")&&!arr1[u].equals("9")){
						String a7=arr1[y];
						arr1[y]=arr1[u];
						arr1[u]=a7;
					}
				}else if(arr1[y].equals("8")){
					if(!arr1[u].equals("大鬼")&&!arr1[u].equals("小鬼")&&!arr1[u].equals("K")&&!arr1[u].equals("Q")&&!arr1[u].equals("J")&&!arr1[u].equals("10")&&!arr1[u].equals("9")&&!arr1[u].equals("8")){
						String a8=arr1[y];
						arr1[y]=arr1[u];
						arr1[u]=a8;
					}
				}else if(arr1[y].equals("7")){
					if(arr1[u].equals("1")||arr1[u].equals("2")||arr1[u].equals("3")||arr1[u].equals("4")||arr1[u].equals("5")||arr1[u].equals("6")){
						String a9=arr1[y];
						arr1[y]=arr1[u];
						arr1[u]=a9;
					}
				}else if(arr1[y].equals("6")){
					if(arr1[u].equals("1")||arr1[u].equals("2")||arr1[u].equals("3")||arr1[u].equals("4")||arr1[u].equals("5")){
						String a10=arr1[y];
						arr1[y]=arr1[u];
						arr1[u]=a10;
					}
				}else if(arr1[y].equals("5")){
					if(arr1[u].equals("1")||arr1[u].equals("2")||arr1[u].equals("3")||arr1[u].equals("4")){
						String a11=arr1[y];
						arr1[y]=arr1[u];
						arr1[u]=a11;
					}
				}else if(arr1[y].equals("4")){
					if(arr1[u].equals("1")||arr1[u].equals("2")||arr1[u].equals("3")){
						String a12=arr1[y];
						arr1[y]=arr1[u];
						arr1[u]=a12;
					}
				}else if(arr1[y].equals("3")){
					if(arr1[u].equals("1")||arr1[u].equals("2")){
						String a13=arr1[y];
						arr1[y]=arr1[u];
						arr1[u]=a13;
					}
				}else if(arr1[y].equals("2")){
					if(arr1[u].equals("1")){
						String a14=arr1[y];
						arr1[y]=arr1[u];
						arr1[u]=a14;
					}
				}
			}
		}
		
		System.out.println("农民1的牌是：");
		for (int n = 0; n < arr1.length; n++) {
			System.out.print(arr1[n] + "  ");
		}
		System.out.println();

		
		for(int y=0;y<arr2.length-1;y++){
			for(int u=y+1;u<arr2.length;u++){
				if(arr2[y].equals("大鬼")){
					String a1=arr2[y];
					arr2[y]=arr2[16];
					arr2[16]=a1;
				}else if(arr2[y].equals("小鬼")){
					if(!arr2[u].equals("大鬼")&&!arr2[u].equals("小鬼")){
					String a2=arr2[y];
					arr2[y]=arr2[u];
					arr2[u]=a2;
					}
				}else if(arr2[y].equals("K")){
					if(!arr2[u].equals("大鬼")&&!arr2[u].equals("小鬼")&&!arr2[u].equals("K")){
						String a3=arr2[y];
						arr2[y]=arr2[u];
						arr2[u]=a3;
					}
				}else if(arr2[y].equals("Q")){
					if(!arr2[u].equals("大鬼")&&!arr2[u].equals("小鬼")&&!arr2[u].equals("K")&&!arr2[u].equals("Q")){
						String a4=arr2[y];
						arr2[y]=arr2[u];
						arr2[u]=a4;
					}
				}else if(arr2[y].equals("J")){
					if(!arr2[u].equals("大鬼")&&!arr2[u].equals("小鬼")&&!arr2[u].equals("K")&&!arr2[u].equals("Q")&&!arr2[u].equals("J")){
						String a5=arr2[y];
						arr2[y]=arr2[u];
						arr2[u]=a5;
					}
				}else if(arr2[y].equals("10")){
					if(!arr2[u].equals("大鬼")&&!arr2[u].equals("小鬼")&&!arr2[u].equals("K")&&!arr2[u].equals("Q")&&!arr2[u].equals("J")&&!arr2[u].equals("10")){
						String a6=arr2[y];
						arr2[y]=arr2[u];
						arr2[u]=a6;
					}
				}else if(arr2[y].equals("9")){
					if(!arr2[u].equals("大鬼")&&!arr2[u].equals("小鬼")&&!arr2[u].equals("K")&&!arr2[u].equals("Q")&&!arr2[u].equals("J")&&!arr2[u].equals("10")&&!arr2[u].equals("9")){
						String a7=arr2[y];
						arr2[y]=arr2[u];
						arr2[u]=a7;
					}
				}else if(arr2[y].equals("8")){
					if(!arr2[u].equals("大鬼")&&!arr2[u].equals("小鬼")&&!arr2[u].equals("K")&&!arr2[u].equals("Q")&&!arr2[u].equals("J")&&!arr2[u].equals("10")&&!arr2[u].equals("9")&&!arr2[u].equals("8")){
						String a8=arr2[y];
						arr2[y]=arr2[u];
						arr2[u]=a8;
					}
				}else if(arr2[y].equals("7")){
					if(arr2[u].equals("1")||arr2[u].equals("2")||arr2[u].equals("3")||arr2[u].equals("4")||arr2[u].equals("5")||arr2[u].equals("6")){
						String a9=arr2[y];
						arr2[y]=arr2[u];
						arr2[u]=a9;
					}
				}else if(arr2[y].equals("6")){
					if(arr2[u].equals("1")||arr2[u].equals("2")||arr2[u].equals("3")||arr2[u].equals("4")||arr2[u].equals("5")){
						String a10=arr2[y];
						arr2[y]=arr2[u];
						arr2[u]=a10;
					}
				}else if(arr1[y].equals("5")){
					if(arr1[u].equals("1")||arr1[u].equals("2")||arr1[u].equals("3")||arr1[u].equals("4")){
						String a11=arr1[y];
						arr1[y]=arr1[u];
						arr1[u]=a11;
					}
				}else if(arr2[y].equals("4")){
					if(arr2[u].equals("1")||arr2[u].equals("2")||arr2[u].equals("3")){
						String a12=arr2[y];
						arr2[y]=arr2[u];
						arr2[u]=a12;
					}
				}else if(arr2[y].equals("3")){
					if(arr2[u].equals("1")||arr2[u].equals("2")){
						String a13=arr2[y];
						arr2[y]=arr2[u];
						arr2[u]=a13;
					}
				}else if(arr2[y].equals("2")){
					if(arr2[u].equals("1")){
						String a14=arr2[y];
						arr2[y]=arr2[u];
						arr2[u]=a14;
					}
				}
			}
		}
		System.out.println("农民2的牌是：");
		for (int n = 0; n < arr2.length; n++) {
			System.out.print(arr2[n] + "  ");
		}
		System.out.println();
		
		for(int y=0;y<arr3.length-1;y++){
			for(int u=y+1;u<arr3.length;u++){
				if(arr3[y].equals("大鬼")){
					String a1=arr3[y];
					arr3[y]=arr3[16];
					arr3[16]=a1;
				}else if(arr3[y].equals("小鬼")){
					if(!arr3[u].equals("大鬼")&&!arr3[u].equals("小鬼")){
					String a2=arr3[y];
					arr3[y]=arr3[u];
					arr3[u]=a2;
					}
				}else if(arr3[y].equals("K")){
					if(!arr3[u].equals("大鬼")&&!arr3[u].equals("小鬼")&&!arr3[u].equals("K")){
						String a3=arr3[y];
						arr3[y]=arr3[u];
						arr3[u]=a3;
					}
				}else if(arr3[y].equals("Q")){
					if(!arr3[u].equals("大鬼")&&!arr3[u].equals("小鬼")&&!arr3[u].equals("K")&&!arr3[u].equals("Q")){
						String a4=arr3[y];
						arr3[y]=arr3[u];
						arr3[u]=a4;
					}
				}else if(arr3[y].equals("J")){
					if(!arr3[u].equals("大鬼")&&!arr3[u].equals("小鬼")&&!arr3[u].equals("K")&&!arr3[u].equals("Q")&&!arr3[u].equals("J")){
						String a5=arr3[y];
						arr3[y]=arr3[u];
						arr3[u]=a5;
					}
				}else if(arr3[y].equals("10")){
					if(!arr3[u].equals("大鬼")&&!arr3[u].equals("小鬼")&&!arr3[u].equals("K")&&!arr3[u].equals("Q")&&!arr3[u].equals("J")&&!arr3[u].equals("10")){
						String a6=arr3[y];
						arr3[y]=arr3[u];
						arr3[u]=a6;
					}
				}else if(arr3[y].equals("9")){
					if(!arr3[u].equals("大鬼")&&!arr3[u].equals("小鬼")&&!arr3[u].equals("K")&&!arr3[u].equals("Q")&&!arr3[u].equals("J")&&!arr3[u].equals("10")&&!arr3[u].equals("9")){
						String a7=arr3[y];
						arr3[y]=arr3[u];
						arr3[u]=a7;
					}
				}else if(arr3[y].equals("8")){
					if(!arr3[u].equals("大鬼")&&!arr3[u].equals("小鬼")&&!arr3[u].equals("K")&&!arr3[u].equals("Q")&&!arr3[u].equals("J")&&!arr3[u].equals("10")&&!arr3[u].equals("9")&&!arr3[u].equals("8")){
						String a8=arr3[y];
						arr3[y]=arr3[u];
						arr3[u]=a8;
					}
				}else if(arr3[y].equals("7")){
					if(arr3[u].equals("1")||arr3[u].equals("2")||arr3[u].equals("3")||arr3[u].equals("4")||arr3[u].equals("5")||arr3[u].equals("6")){
						String a9=arr3[y];
						arr3[y]=arr3[u];
						arr3[u]=a9;
					}
				}else if(arr3[y].equals("6")){
					if(arr3[u].equals("1")||arr3[u].equals("2")||arr3[u].equals("3")||arr3[u].equals("4")||arr3[u].equals("5")){
						String a10=arr3[y];
						arr3[y]=arr3[u];
						arr3[u]=a10;
					}
				}else if(arr3[y].equals("5")){
					if(arr3[u].equals("1")||arr3[u].equals("2")||arr3[u].equals("3")||arr3[u].equals("4")){
						String a11=arr3[y];
						arr3[y]=arr3[u];
						arr3[u]=a11;
					}
				}else if(arr3[y].equals("4")){
					if(arr3[u].equals("1")||arr3[u].equals("2")||arr3[u].equals("3")){
						String a12=arr3[y];
						arr3[y]=arr3[u];
						arr3[u]=a12;
					}
				}else if(arr3[y].equals("3")){
					if(arr3[u].equals("1")||arr3[u].equals("2")){
						String a13=arr3[y];
						arr3[y]=arr3[u];
						arr3[u]=a13;
					}
				}else if(arr3[y].equals("2")){
					if(arr3[u].equals("1")){
						String a14=arr3[y];
						arr3[y]=arr3[u];
						arr3[u]=a14;
					}
				}
			}
		}
		System.out.println("地主的牌是：");
		for (int n = 0; n < arr3.length; n++) {
			System.out.print(arr3[n] + "  ");
		}
		System.out.println();
		System.out.println("底牌是" + arr[51] + "  " + arr[52] + "  " + arr[53]);
		/*
		 * 
		 */
		int boomcount1 = 0;
		int boomcount2 = 0;
		int boomcount3 = 0;
		int boom[] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
		int boom2[] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
		int boom3[] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

		for (int q = 0; q < 17; q++) {
			if (arr1[q].equals("1")) {
				boom[0]++;
				if (boom[1] == 4) {
					boomcount1++;
				}
			} else if (arr1[q].equals("2")) {
				boom[1]++;
				if (boom[1] == 4) {
					boomcount1++;
				}
			} else if (arr1[q].equals("3")) {
				boom[2]++;
				if (boom[2] == 4) {
					boomcount1++;
				}
			} else if (arr1[q].equals("4")) {
				boom[3]++;
				if (boom[3] == 4) {
					boomcount1++;
				}
			} else if (arr1[q].equals("5")) {
				boom[4]++;
				if (boom[4] == 4) {
					boomcount1++;
				}
			} else if (arr1[q].equals("6")) {
				boom[5]++;
				if (boom[5] == 4) {
					boomcount1++;
				}
			} else if (arr1[q].equals("7")) {
				boom[6]++;
				if (boom[6] == 4) {
					boomcount1++;
				}
			} else if (arr1[q].equals("8")) {
				boom[7]++;
				if (boom[7] == 4) {
					boomcount1++;
				}
			} else if (arr1[q].equals("9")) {
				boom[8]++;
				if (boom[8] == 4) {
					boomcount1++;
				}
			} else if (arr1[q].equals("10")) {
				boom[9]++;
				if (boom[9] == 4) {
					boomcount1++;
				}
			} else if (arr1[q].equals("J")) {
				boom[10]++;
				if (boom[10] == 4) {
					boomcount1++;
				}
			} else if (arr1[q].equals("Q")) {
				boom[11]++;
				if (boom[11] == 4) {
					boomcount1++;
				}
			} else if (arr1[q].equals("K")) {
				boom[12]++;
				if (boom[12] == 4) {
					boomcount1++;
				}
			} else if (arr1[q].equals("大鬼") || arr1[q].equals("小鬼")) {
				boom[13]++;
				if (boom[13] == 2) {
					boomcount1++;
				}
			}
		}
		System.out.println("农民1的炸弹有" + boomcount1 + "个");

		if (boom[1] == 2 && boom[13] == 1 || boomcount1 > 0 || boom[1] == 3) {
			System.out.println("好牌");
		} else if (boom[1] == 1 && boom[13] == 1 || boom[1] == 2) {
			System.out.println("中等");
		} else {
			System.out.println("差牌");
		}

		for (int q = 0; q < 17; q++) {
			if (arr2[q].equals("1")) {
				boom2[0]++;
				if (boom[0] == 4) {
					boomcount2++;
				}
			} else if (arr2[q].equals("2")) {
				boom2[1]++;
				if (boom2[1] == 4) {
					boomcount2++;
				}
			} else if (arr2[q].equals("3")) {
				boom2[2]++;
				if (boom2[2] == 4) {
					boomcount2++;
				}
			} else if (arr2[q].equals("4")) {
				boom2[3]++;
				if (boom2[3] == 4) {
					boomcount2++;
				}
			} else if (arr2[q].equals("5")) {
				boom2[4]++;
				if (boom2[4] == 4) {
					boomcount2++;
				}
			} else if (arr2[q].equals("6")) {
				boom2[5]++;
				if (boom2[5] == 4) {
					boomcount2++;
				}
			} else if (arr2[q].equals("7")) {
				boom2[6]++;
				if (boom2[6] == 4) {
					boomcount2++;
				}
			} else if (arr2[q].equals("8")) {
				boom2[7]++;
				if (boom2[7] == 4) {
					boomcount2++;
				}
			} else if (arr2[q].equals("9")) {
				boom2[8]++;
				if (boom2[8] == 4) {
					boomcount2++;
				}
			} else if (arr2[q].equals("10")) {
				boom2[9]++;
				if (boom2[9] == 4) {
					boomcount2++;
				}
			} else if (arr2[q].equals("J")) {
				boom2[10]++;
				if (boom2[10] == 4) {
					boomcount2++;
				}
			} else if (arr2[q].equals("Q")) {
				boom2[11]++;
				if (boom2[11] == 4) {
					boomcount2++;
				}
			} else if (arr2[q].equals("K")) {
				boom2[12]++;
				if (boom2[12] == 4) {
					boomcount2++;
				}
			} else if (arr2[q].equals("大鬼") || arr2[q].equals("小鬼")) {
				boom2[13]++;
				if (boom2[13] == 2) {
					boomcount2++;
				}
			}
		}
		System.out.println("农民2的炸弹有" + boomcount2 + "个");

		if (boom2[1] == 2 && boom2[13] == 1 || boomcount2 > 0 || boom2[1] == 3) {
			System.out.println("好牌");
		} else if (boom2[1] == 1 && boom2[13] == 1 || boom2[1] == 2) {
			System.out.println("中等");
		} else {
			System.out.println("差牌");
		}
		for (int q = 0; q < 20; q++) {
			if (arr3[q].equals("1")) {
				boom3[0]++;
				if (boom3[0] == 4) {
					boomcount3++;
				}
			} else if (arr3[q].equals("2")) {
				boom3[1]++;
				if (boom3[1] == 4) {
					boomcount3++;
				}
			} else if (arr3[q].equals("3")) {
				boom3[2]++;
				if (boom3[2] == 4) {
					boomcount3++;
				}
			} else if (arr3[q].equals("4")) {
				boom3[3]++;
				if (boom3[3] == 4) {
					boomcount3++;
				}
			} else if (arr3[q].equals("5")) {
				boom3[4]++;
				if (boom3[4] == 4) {
					boomcount3++;
				}
			} else if (arr3[q].equals("6")) {
				boom3[5]++;
				if (boom3[5] == 4) {
					boomcount3++;
				}
			} else if (arr3[q].equals("7")) {
				boom3[6]++;
				if (boom3[6] == 4) {
					boomcount3++;
				}
			} else if (arr3[q].equals("8")) {
				boom3[7]++;
				if (boom3[7] == 4) {
					boomcount3++;
				}
			} else if (arr3[q].equals("9")) {
				boom3[8]++;
				if (boom3[8] == 4) {
					boomcount3++;
				}
			} else if (arr3[q].equals("10")) {
				boom3[9]++;
				if (boom3[9] == 4) {
					boomcount3++;
				}
			} else if (arr3[q].equals("J")) {
				boom3[10]++;
				if (boom3[10] == 4) {
					boomcount3++;
				}
			} else if (arr3[q].equals("Q")) {
				boom3[11]++;
				if (boom3[11] == 4) {
					boomcount3++;
				}
			} else if (arr3[q].equals("K")) {
				boom3[12]++;
				if (boom3[12] == 4) {
					boomcount3++;
				}
			} else if (arr3[q].equals("大鬼") || arr3[q].equals("小鬼")) {
				boom3[13]++;
				if (boom3[13] == 2) {
					boomcount3++;
				}
			}
		}
		System.out.println("地主的炸弹有" + boomcount3 + "个");

		if (boom3[1] == 2 && boom3[13] == 1 || boomcount3 > 0 || boom3[1] == 3) {
			System.out.println("好牌");
		} else if (boom3[1] == 1 && boom3[13] == 1 || boom3[1] == 2) {
			System.out.println("中等");
		} else {
			System.out.println("差牌");
		}

	}

}