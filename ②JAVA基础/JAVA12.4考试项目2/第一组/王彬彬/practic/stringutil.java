package practic;

import java.util.ArrayList;
import java.util.List;

public class stringutil {
//charat
	public static char CharAt(String str,int i){
		char arr[]=str.toCharArray();
		return arr[i];
	}
	//substring		
	public static String subString(String str ,int a,int b){
		
	     char arr[]=str.toCharArray();
		String result="";
		for(int i=a;i<b;i++){
			result =result+arr[i];
		}
		return result;
		
		
	}
	//indexof	
	public static int indexof(String str,String intsert){
		char arr[]=str.toCharArray();
		char arr2[]=intsert.toCharArray();
		boolean c=true;int t=-1;
		for(int i=0;i<arr.length;i++){
			if(arr[i]==arr2[0]){
				if(arr2.length==1){
					t=i;
					break;
				}else{
					
				int a=i;int b=0;
				while(b<intsert.length()&&a<arr.length){
					if(arr[a]!=arr2[b]){
						c=false;
						break;
					}
					a++;b++;
				}
				}
				if(c){
					t=i;
				}	
		}	
	}
		return t;
	}
	
	//replace
	public static String replace(String str,char a,char b){
		char arr[]=str.toCharArray();
		for(int i=0;i<arr.length;i++){
			if(arr[i]==a){
				arr[i]=b;
			}
		}
		String n ="";
		for(int i=0;i<arr.length;i++){
			n=n+arr[i];
		}
		
		return n;
		
	}
//split
	public static String[] split(String str, String from){
		List<String> list=new ArrayList<String>();
		for(int i=0;true;i++){
			int a =stringutil.indexof(str, from);
			if(a==-1){
				list.add(str);
				break;
			}
			String b=stringutil.subString(str, 0, a);
			list.add(b);
			str=stringutil.subString(str, a+1, str.length());
		}
		String arr[]=new String[list.size()];
		for(int i=0;i<list.size();i++){
			arr[i]=list.get(i);
		}
		return arr;
		
		
	}
	
//touppercase
	public static String toUppercase(String str){
		char arr[]=str.toCharArray();
		for(int i=0;i<arr.length;i++){
			if((int)arr[i]>=97){
				arr[i]=(char)((int)arr[i]-32);
			}
		}
		String str2=new String(arr);
		return str2;
	}
//tolowercase
	
	public static String tolowercase(String str){
		char arr[]=str.toCharArray();
		for(int i=0;i<arr.length;i++){
			if((int)arr[i]<=90&&(int)arr[i]>=65){
				arr[i]=(char)((int)arr[i]+32);
			}
		}
		String str2=new String(arr);
		return str2;
	}
//length
	public static int length(String str){
		char arr[]=str.toCharArray();
		int count=0;
		for(char i:arr){
			count++;
		}
		return count;
	}
	
//trim	
	public static String trim(String str){
		boolean t=false;
		for(int i=0;i<str.length();i++){
			if(str.charAt(i)!=' '){
				t=true;
			}
			if(str.charAt(i)==' '||t){
				str=stringutil.subString(str, i+1, str.length());
			}
		}
		boolean f=false;
		for(int i=str.length()-1;i>=1;i--){
			if(str.charAt(i)!=' '){
				t=true;
			}
			if(str.charAt(i)==' '||f){
				str=stringutil.subString(str, i+1, str.length());
			}
		}
		return str;
	}
	
	
	
			
}
