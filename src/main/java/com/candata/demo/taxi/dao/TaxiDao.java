package com.candata.demo.taxi.dao;

import java.util.List;

import com.candata.demo.taxi.entity.PredResult;

public interface TaxiDao {
	public List<PredResult> findAll();
}
