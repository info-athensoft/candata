package com.athensoft.util.coupon;

import java.util.Date;

public class Coupon {
	private final static String GENERAL = "G";
	private final static String EVENT 	= "E";
	private final static String SHARED 	= "S";
	private final static String PRIVATE = "P";
	
	private String 	eventType;		//G,E
	private String 	obtainMethod;	//S,P
	private String 	couponID;
	private Date 	createDate;
	private Date	issueDate;
	private Date	usedDate;
	private int		couponStatus;
	
	public String getEventType() {
		return eventType;
	}
	public void setEventType(String eventType) {
		this.eventType = eventType;
	}
	public String getObtainMethod() {
		return obtainMethod;
	}
	public void setObtainMethod(String obtainMethod) {
		this.obtainMethod = obtainMethod;
	}
	public String getCouponID() {
		return couponID;
	}
	public void setCouponID(String couponID) {
		this.couponID = couponID;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}
	public Date getUsedDate() {
		return usedDate;
	}
	public void setUsedDate(Date usedDate) {
		this.usedDate = usedDate;
	}
	public int getCouponStatus() {
		return couponStatus;
	}
	public void setCouponStatus(int couponStatus) {
		this.couponStatus = couponStatus;
	}
	
	
	
}
