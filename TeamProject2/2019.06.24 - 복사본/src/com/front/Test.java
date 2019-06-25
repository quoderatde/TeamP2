package com.front;

import java.util.HashMap;
import java.util.Scanner;

public class Test {
	public static void main(String[] args) {
		HashMap<String, String> map = new HashMap<String, String>();
		
		// HashMap<key, value> key값은 중복이 되면 안되고 value값은 중복이여도 가능 
		
		map.put("사과", "1000원");
		map.put("딸기", "1500원");
		map.put("수박", "2000원");
		
		Scanner sc = new Scanner(System.in);
		System.out.println("원하는 과일 입력:");
		String input =sc.next();
		System.out.println(map.get(input));
		
	}
}
