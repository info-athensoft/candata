package com.candata.demo.taxi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.candata.demo.taxi.dao.TaxiDataDao;
import com.candata.demo.taxi.dao.TaxiPassengerDao;
import com.candata.demo.taxi.entity.ExtractedData;
import com.candata.demo.taxi.model.PassengerLoad;

@Service
public class TaxiDataService {
	
	private TaxiDataDao taxiDataDao;
	
	@Autowired
	@Qualifier("taxiDataDaoJdbcImpl")
	public void setTaxiDataDao(TaxiDataDao taxiDataDao){
		this.taxiDataDao = taxiDataDao;
	}
	
	private TaxiPassengerDao taxiPassengerDao;
	
	@Autowired
	@Qualifier("taxiPassengerDaoJdbcImpl")
	public void setTaxiPassengerDao(TaxiPassengerDao taxiPassengerDao){
		this.taxiPassengerDao = taxiPassengerDao;
	}
	
	@Cacheable("cache_alldata")
	public List<ExtractedData> getAllData(){
		return taxiDataDao.findAll();
	}
	
	@Cacheable("cache_alldataByVendor")
	public List<ExtractedData> getDataByVendor(int vendorId){
		String qryStr = " AND vendor_id="+vendorId;
		return taxiDataDao.find(qryStr);
	}
	
	
	public List<PassengerLoad> getGroupByDatetime(int vendorId){
		switch(vendorId){
			case 0: {
				return getGroupByDatetime1();
			}
			case 1: {
				return getGroupByDatetime2();
			}
			default : break;
		}
		return taxiPassengerDao.groupByDatetime(vendorId);
	}
	
	@Cacheable("cache_alldataByDatetime1")
	private List<PassengerLoad> getGroupByDatetime1(){
		return taxiPassengerDao.groupByDatetime(0);
	}
	
	@Cacheable("cache_alldataByDatetime2")
	private List<PassengerLoad> getGroupByDatetime2(){
		return taxiPassengerDao.groupByDatetime(1);
	}
	
	public List<PassengerLoad> getGroupByMonth(int vendorId){
		return taxiPassengerDao.groupByMonth(vendorId);
	}
}
