package com.candata.demo.taxi.entity;

import java.util.Date;

public class ExtractedData {
	private String order_id; 
	public String getOrder_id() {
		return order_id;
	}

	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}

	private int vendor_id;
	private Date pickup_datetime;
	private int passenger_count;
	private double pickup_longitude;
	private double pickup_latitude;
	private double dropoff_longitude;
	private double dropoff_latitude;
	private String store_and_fwd_flag;
	private int trip_duration; // in second

	public int getVendor_id() {
		return vendor_id;
	}

	public void setVendor_id(int vendor_id) {
		this.vendor_id = vendor_id;
	}

	public Date getPickup_datetime() {
		return pickup_datetime;
	}

	public void setPickup_datetime(Date pickup_datetime) {
		this.pickup_datetime = pickup_datetime;
	}

	public int getPassenger_count() {
		return passenger_count;
	}

	public void setPassenger_count(int passenger_count) {
		this.passenger_count = passenger_count;
	}

	public double getPickup_longitude() {
		return pickup_longitude;
	}

	public void setPickup_longitude(double pickup_longitude) {
		this.pickup_longitude = pickup_longitude;
	}

	public double getPickup_latitude() {
		return pickup_latitude;
	}

	public void setPickup_latitude(double pickup_latitude) {
		this.pickup_latitude = pickup_latitude;
	}

	public double getDropoff_longitude() {
		return dropoff_longitude;
	}

	public void setDropoff_longitude(double dropoff_longitude) {
		this.dropoff_longitude = dropoff_longitude;
	}

	public double getDropoff_latitude() {
		return dropoff_latitude;
	}

	public void setDropoff_latitude(double dropoff_latitude) {
		this.dropoff_latitude = dropoff_latitude;
	}

	public String getStore_and_fwd_flag() {
		return store_and_fwd_flag;
	}

	public void setStore_and_fwd_flag(String store_and_fwd_flag) {
		this.store_and_fwd_flag = store_and_fwd_flag;
	}

	public int getTrip_duration() {
		return trip_duration;
	}

	public void setTrip_duration(int trip_duration) {
		this.trip_duration = trip_duration;
	}

	@Override
	public String toString() {
		return "ExtractedData [order_id=" + order_id + ", vendor_id=" + vendor_id + ", pickup_datetime="
				+ pickup_datetime + ", passenger_count=" + passenger_count + ", pickup_longitude=" + pickup_longitude
				+ ", pickup_latitude=" + pickup_latitude + ", dropoff_longitude=" + dropoff_longitude
				+ ", dropoff_latitude=" + dropoff_latitude + ", store_and_fwd_flag=" + store_and_fwd_flag
				+ ", trip_duration=" + trip_duration + "]";
	}

}

/**
 * 
 * id | varchar(10) | YES | | NULL | | | vendor_id | int(11) | YES | | NULL | |
 * | pickup_datetime | datetime | YES | | NULL | | | passenger_count | int(11) |
 * YES | | NULL | | | pickup_longitude | decimal(20,6) | YES | | NULL | | |
 * pickup_latitude | decimal(20,6) | YES | | NULL | | | dropoff_longitude |
 * decimal(20,6) | YES | | NULL | | | dropoff_latitude | decimal(20,6) | YES | |
 * NULL | | | store_and_fwd_flag | varchar(1) | YES | | NULL | | | trip_duration
 * | int(11) | YES | | NULL | |
 */