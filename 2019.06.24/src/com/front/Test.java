package com.front;

import java.util.HashMap;
import java.util.Scanner;

public class Test {
	public static void main(String[] args) {
		HashMap<String, String> map = new HashMap<String, String>();
		
		// HashMap<key, value> key���� �ߺ��� �Ǹ� �ȵǰ� value���� �ߺ��̿��� ���� 
		
		map.put("���", "1000��");
		map.put("����", "1500��");
		map.put("����", "2000��");
		
		Scanner sc = new Scanner(System.in);
		System.out.println("���ϴ� ���� �Է�:");
		String input =sc.next();
		System.out.println(map.get(input));
		
	}
}
