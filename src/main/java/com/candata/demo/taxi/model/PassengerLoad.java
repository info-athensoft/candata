package com.candata.demo.taxi.model;

public class PassengerLoad {
	private int vendorId;
	private String strDatetime;
	private int passengerCount;
	public int getVendorId() {
		return vendorId;
	}
	public void setVendorId(int vendorId) {
		this.vendorId = vendorId;
	}
	public String getStrDatetime() {
		return strDatetime;
	}
	public void setStrDatetime(String strDatetime) {
		this.strDatetime = strDatetime;
	}
	public int getPassengerCount() {
		return passengerCount;
	}
	public void setPassengerCount(int passengerCount) {
		this.passengerCount = passengerCount;
	}
	@Override
	public String toString() {
		return "PassengerLoad [vendorId=" + vendorId + ", strDatetime=" + strDatetime + ", passengerCount="
				+ passengerCount + "]";
	}
	
	
	
}
