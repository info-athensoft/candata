package com.candata.demo.taxi.dao;

import java.util.List;

import com.candata.demo.taxi.model.PassengerLoad;

public interface TaxiPassengerDao {
	public List<PassengerLoad> groupByDatetime(int vendorId);
	public List<PassengerLoad> groupByMonth(int vendorId);
}
