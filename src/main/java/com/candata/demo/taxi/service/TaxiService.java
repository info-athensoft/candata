package com.candata.demo.taxi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.candata.demo.taxi.dao.TaxiDao;
import com.candata.demo.taxi.entity.PredResult;

@Service
public class TaxiService {
	
	private TaxiDao taxiDao;
	
	@Autowired
	public void setTaxiDao(TaxiDao taxiDao){
		this.taxiDao = taxiDao;
	}
	
	public List<PredResult> getPredResult(){
		return taxiDao.findAll();
	}
}
