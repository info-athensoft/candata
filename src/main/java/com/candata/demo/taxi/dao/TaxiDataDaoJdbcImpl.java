package com.candata.demo.taxi.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.candata.demo.taxi.entity.ExtractedData;

@Repository
@Qualifier("taxiDataDaoJdbcImpl")
public class TaxiDataDaoJdbcImpl implements TaxiDataDao {

	private static final String TABLE = "taxi_extracted_train";
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public List<ExtractedData> findAll() {
		StringBuffer sbf =  new StringBuffer();
		sbf.append("SELECT ");
		sbf.append(" id, ");
		sbf.append(" vendor_id, ");
		sbf.append(" pickup_datetime, ");
		sbf.append(" passenger_count, ");
		sbf.append(" pickup_longitude, ");
		sbf.append(" pickup_latitude, ");
		sbf.append(" dropoff_longitude, ");
		sbf.append(" dropoff_latitude, ");
		sbf.append(" store_and_fwd_flag, ");
		sbf.append(" trip_duration ");
		sbf.append(" FROM ").append(TABLE);
		sbf.append(" LIMIT 200");
		
		String sql = sbf.toString();
		List<ExtractedData> list = new ArrayList<ExtractedData>();
		list = jdbc.query(sql, new ExtractedDataRowMapper());
		return list;
	}
	
	@Override
	public List<ExtractedData> find(String queryString) {
		StringBuffer sbf =  new StringBuffer();
		sbf.append("SELECT ");
		sbf.append(" id, ");
		sbf.append(" vendor_id, ");
		sbf.append(" pickup_datetime, ");
		sbf.append(" passenger_count, ");
		sbf.append(" pickup_longitude, ");
		sbf.append(" pickup_latitude, ");
		sbf.append(" dropoff_longitude, ");
		sbf.append(" dropoff_latitude, ");
		sbf.append(" store_and_fwd_flag, ");
		sbf.append(" trip_duration ");
		sbf.append(" FROM ").append(TABLE);
		sbf.append(" WHERE 1=1 ");
		sbf.append(queryString);
		sbf.append(" LIMIT 200");
		
		String sql = sbf.toString();
		List<ExtractedData> list = new ArrayList<ExtractedData>();
		list = jdbc.query(sql, new ExtractedDataRowMapper());
		return list;
	}

	private static class ExtractedDataRowMapper implements RowMapper<ExtractedData>{
		public ExtractedData mapRow(ResultSet rs, int rowNumber) throws SQLException {
			ExtractedData x = new ExtractedData();
			x.setOrder_id(rs.getString("id"));
			x.setVendor_id(rs.getInt("vendor_id"));
			
			Timestamp ts = rs.getTimestamp("pickup_datetime");			
			x.setPickup_datetime(new Date(ts.getTime()));
			
			x.setDropoff_latitude(rs.getDouble("dropoff_latitude"));
			x.setDropoff_longitude(rs.getDouble("dropoff_longitude"));
			x.setPassenger_count(rs.getInt("passenger_count"));
			x.setPickup_latitude(rs.getDouble("pickup_latitude"));
			x.setPickup_longitude(rs.getDouble("pickup_longitude"));
			
			x.setStore_and_fwd_flag(rs.getString("store_and_fwd_flag"));
			x.setTrip_duration(rs.getInt("trip_duration"));
			
	        return x;
		}	
	}

}
