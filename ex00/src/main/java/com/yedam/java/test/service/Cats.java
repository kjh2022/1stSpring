package com.yedam.java.test.service;

import org.springframework.beans.factory.annotation.Autowired;

import lombok.Data;

@Data
public class Cats {
	private String name;
	private int age;
	private String color;
	//구현 클래스 직접 호출(이렇게 하면 안댐)
	public void printInfo() {
		System.out.println(this.getName() + ", " + this.getAge() + ", " + this.getColor());
	}
	
	
	//아래와 같이 인터페이스를 이용해서 호출해야만 함
	@Autowired
	Cats myCat;
	public void printData() {
		System.out.println(myCat.getName() + ", " + myCat.getAge() + ", " + myCat.getColor());
	}
}
