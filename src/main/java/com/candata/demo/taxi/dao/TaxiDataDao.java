package com.candata.demo.taxi.dao;

import java.util.List;

import com.candata.demo.taxi.entity.ExtractedData;
import com.candata.demo.taxi.model.PassengerLoad;

public interface TaxiDataDao {
	public List<ExtractedData> findAll();
	
	public List<ExtractedData> find(String queryString);
	

}
