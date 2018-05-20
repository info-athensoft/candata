package com.candata.demo.taxi.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.athensoft.site.support.entity.SubscribeEmail;
import com.candata.demo.taxi.entity.PredResult;

@Repository
@Qualifier("taxiDaoJdbcImpl")
public class TaxiDaoJdbcImpl implements TaxiDao {
	
	private static final String TABLE = "valid_pred";
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	
	@Override
	public List<PredResult> findAll() {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT id, pred, truth FROM ");
		sbf.append(TABLE);
		sbf.append(" WHERE 1=1 ");
		sbf.append(" LIMIT 200 ");
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		return jdbc.query(sql,paramSource,new PredResultRowMapper());
		
	}
	
	private static class PredResultRowMapper implements RowMapper<PredResult>{
		public PredResult mapRow(ResultSet rs, int rowNumber) throws SQLException {
			PredResult x = new PredResult();
			x.setOrderId(rs.getString("id"));
			x.setPred(rs.getDouble("pred"));
			x.setTruth(rs.getDouble("truth"));
	        return x;
		}	
	}

}
