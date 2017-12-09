package com.KaoShi;

import java.util.List;
import java.util.Scanner;

public interface Service {

	void addto(List<AddressList> list,Scanner sc);
	void xianshisuoyou(List<AddressList> list);
	void queryName(List<AddressList> list,Scanner sc);
	void querySex(List<AddressList> list,Scanner sc);
	void queryDianhua(List<AddressList> list,Scanner sc);
	
}
