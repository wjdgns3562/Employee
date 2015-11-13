package com.hybrid.other;

public class WrapperTest {

	public static void main(String[] args) {
		//Primitive Type
		byte b = 20;		//1btyte
		short s = 10;		//2
		char c = 30;		//2
		int i = 10;			//4
		long l = 200;		//8
		float f = 10.5f;	//4
		double d = 10.6;	//8
		String string = null;
		//Wrapper Class
		Byte b1 = Byte.valueOf("10");
		Short s1 = 10;
		Character c1 = 30;
		Integer i1 = 200;
		Long l1 = 200L;
		Float f1 = 200f;
		Double d1 = 300.;
		
		d = d1;

	}

}
