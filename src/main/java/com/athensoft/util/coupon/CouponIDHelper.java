package com.athensoft.util.coupon;

public class CouponIDHelper {
	

	final public static String getCouponID(String eventType, String ObtainMethod, String ItemCode){
		String couponID = "";
		
		return couponID;
	}
	
	
	final public synchronized static long generateLong() {
		long t = System.nanoTime();
		return t;
	}
	
	public static void main(String[] args){
		//System.out.println(generate());
		
		for(int i=0; i<10; i++){
			System.out.println(generateLong());
		}
	}
	
}
