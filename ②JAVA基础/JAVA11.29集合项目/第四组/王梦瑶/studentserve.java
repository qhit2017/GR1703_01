package day28;

import java.util.List;
import java.util.Scanner;

public interface studentserve {
	void add(List<student> list,Scanner sc);
	void find(List<student> list);
	void findname(List<student> list,Scanner sc);
	void delete(List<student> list,Scanner sc);
	void up(List<student> list,Scanner sc);
}
