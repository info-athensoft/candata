package com.candata.demo.taxi.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.candata.demo.taxi.model.PassengerLoad;

@Repository
@Qualifier("taxiPassengerDaoJdbcImpl")
public class TaxiPassengerDaoJdbcImpl implements TaxiPassengerDao{
	
	private static final String TABLE = "taxi_extracted_train";
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public List<PassengerLoad> groupByDatetime(int vendorId) {
		String sql ="select vendor_id, DATE_FORMAT(pickup_datetime, '%Y-%m-%d') as datetimestr, sum(passenger_count) as psngr_count "
					+"from taxi_extracted_train"
					+" where vendor_id=:vendor_id "
					+"group by DATE_FORMAT(pickup_datetime, '%Y%m%d')";
		
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("vendor_id", vendorId);
		
		List<PassengerLoad> list = new ArrayList<PassengerLoad>();
		list = jdbc.query(sql, paramSource, new PassengerLoadRowMapper());
		return list;
	}
	
	@Override
	public List<PassengerLoad> groupByMonth(int vendorId) {
		String sql ="select vendor_id, month as datetimestr, sum(passenger_count) as psngr_count "
					+"from taxi_extracted_train"
					+" where vendor_id=:vendor_id "
					+"group by month";
		
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("vendor_id", vendorId);
		
		List<PassengerLoad> list = new ArrayList<PassengerLoad>();
		list = jdbc.query(sql, paramSource, new PassengerLoadRowMapper());
		return list;
	}
	
	
	private static class PassengerLoadRowMapper implements RowMapper<PassengerLoad>{
		public PassengerLoad mapRow(ResultSet rs, int rowNumber) throws SQLException {
			PassengerLoad x = new PassengerLoad();
			x.setVendorId(rs.getInt("vendor_id"));
			x.setStrDatetime(rs.getString("datetimestr"));
			x.setPassengerCount(rs.getInt("psngr_count"));
			
	        return x;
		}	
	}
}
