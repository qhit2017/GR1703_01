import java.util.Scanner;


public class question2 {
	/*
	 *  �Ӽ��̽���һ���ַ���������ַ�����Ĵ�д��ĸ����СдӢ����ĸ������Ӣ����ĸ��
	 */
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("������һ���ַ���");
		String str = sc.nextLine();
		
		String arr[]= new String [str.length()];
		for(int i=0;i<str.length();i++){
			arr[i]=""+str.charAt(i);
		}
		int count1=0;
		System.out.println("��дӢ����ĸ��");
		for(int a=0;a<arr.length;a++){
			if(arr[a].equals("A")||arr[a].equals("B")||arr[a].equals("C")||arr[a].equals("D")||arr[a].equals("E")||arr[a].equals("F")||arr[a].equals("G")||arr[a].equals("H")||arr[a].equals("I")||arr[a].equals("J")||arr[a].equals("K")||arr[a].equals("L")||arr[a].equals("M")||arr[a].equals("N")||arr[a].equals("O")||arr[a].equals("P")||arr[a].equals("Q")||arr[a].equals("R")||arr[a].equals("S")||arr[a].equals("T")||arr[a].equals("U")||arr[a].equals("V")||arr[a].equals("W")||arr[a].equals("X")||arr[a].equals("Y")||arr[a].equals("Z")){
					System.out.print(arr[a]+"  ");	
				count1++;	
			}
		}
		System.out.println("��дӢ����ĸ��"+count1+"��");
		
		int count2=0;
		System.out.println();
		System.out.println("СдӢ����ĸ��");
		for(int a=0;a<arr.length;a++){
			if(arr[a].equals("a")||arr[a].equals("b")||arr[a].equals("c")||arr[a].equals("d")||arr[a].equals("e")||arr[a].equals("f")||arr[a].equals("g")||arr[a].equals("h")||arr[a].equals("i")||arr[a].equals("j")||arr[a].equals("k")||arr[a].equals("l")||arr[a].equals("m")||arr[a].equals("n")||arr[a].equals("o")||arr[a].equals("p")||arr[a].equals("q")||arr[a].equals("r")||arr[a].equals("s")||arr[a].equals("t")||arr[a].equals("u")||arr[a].equals("v")||arr[a].equals("w")||arr[a].equals("x")||arr[a].equals("y")||arr[a].equals("z")){
				System.out.print(arr[a]+"  ");	
				count2++;
			}
		}
		System.out.println("СдӢ����ĸ��"+count2+"��");
		
		int count3=0;
		System.out.println();
		System.out.println("��Ӣ����ĸ��");
		for(int a=0;a<arr.length;a++){
			if(!arr[a].equals("A")&&!arr[a].equals("B")&&!arr[a].equals("C")&&!arr[a].equals("D")&&!arr[a].equals("E")&&!arr[a].equals("F")&&!arr[a].equals("G")&&!arr[a].equals("H")&&!arr[a].equals("I")&&!arr[a].equals("J")&&!arr[a].equals("K")&&!arr[a].equals("L")&&!arr[a].equals("M")&&!arr[a].equals("N")&&!arr[a].equals("O")&&!arr[a].equals("P")&&!arr[a].equals("Q")&&!arr[a].equals("R")&&!arr[a].equals("S")&&!arr[a].equals("T")&&!arr[a].equals("U")&&!arr[a].equals("V")&&!arr[a].equals("W")&&!arr[a].equals("X")&&!arr[a].equals("Y")&&!arr[a].equals("Z")&&!arr[a].equals("a")&&!arr[a].equals("b")&&!arr[a].equals("c")&&!arr[a].equals("d")&&!arr[a].equals("e")&&!arr[a].equals("f")&&!arr[a].equals("g")&&!arr[a].equals("h")&&!arr[a].equals("i")&&!arr[a].equals("j")&&!arr[a].equals("k")&&!arr[a].equals("l")&&!arr[a].equals("m")&&!arr[a].equals("n")&&!arr[a].equals("o")&&!arr[a].equals("p")&&!arr[a].equals("q")&&!arr[a].equals("r")&&!arr[a].equals("s")&&!arr[a].equals("t")&&!arr[a].equals("u")&&!arr[a].equals("v")&&!arr[a].equals("w")&&!arr[a].equals("x")&&!arr[a].equals("y")&&!arr[a].equals("z")){
				System.out.print(arr[a]+"  ");	
				count3++;
			}
		}
		System.out.println("��Ӣ����ĸ��"+count3+"��");
		
		
		}	
	
}
