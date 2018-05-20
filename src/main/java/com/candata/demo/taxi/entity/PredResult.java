package com.candata.demo.taxi.entity;

public class PredResult {
	private String 	orderId;
	private double 	pred;
	private double 	truth;
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public double getPred() {
		return pred;
	}
	public void setPred(double pred) {
		this.pred = pred;
	}
	public double getTruth() {
		return truth;
	}
	public void setTruth(double truth) {
		this.truth = truth;
	}
	@Override
	public String toString() {
		return "PredResult [orderId=" + orderId + ", pred=" + pred + ", truth=" + truth + "]";
	}
	
	
}
