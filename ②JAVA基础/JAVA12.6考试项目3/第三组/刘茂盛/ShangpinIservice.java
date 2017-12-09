package com.test3;

import java.util.List;
import java.util.Scanner;

public interface ShangpinIservice {
	void xinzeng(List<Shangpin>list,Scanner sc);
	void jinhuo(List<Shangpin>list1,List<Shangpin>list,Scanner sc);
	void xiaoshou(List<Shangpin>list1,List<Shangpin>list,Scanner sc);
	void findall(List<Shangpin>list,Scanner sc);
	void jinhuojilu(List<Shangpin>list1,List<Shangpin>list,Scanner sc);
	void xiaoshoujine(List<Shangpin>list1,List<Shangpin>list,Scanner sc);

}
