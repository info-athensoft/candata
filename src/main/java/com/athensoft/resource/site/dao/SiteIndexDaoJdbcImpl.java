package com.athensoft.resource.site.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.athensoft.resource.site.entity.SiteIndex;

@Repository
@Qualifier("siteIndexDaoJdbcImpl")
public class SiteIndexDaoJdbcImpl implements SiteIndexDao {
	private final static Logger logger = Logger.getLogger(SiteIndexDaoJdbcImpl.class);
	
	private static final String TABLE = "RSC_SITE";
	
	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public List<SiteIndex> findAll() {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id, ");
		sbf.append("site_url, ");
		sbf.append("site_name, ");
		sbf.append("site_keyword, ");
		sbf.append("site_desc, ");
		sbf.append("site_referrer, ");
		sbf.append("site_status ");
		sbf.append(" FROM "+ TABLE);
		sbf.append(" ORDER BY global_id DESC");
		String sql = sbf.toString();
		logger.info(sql);
		
		return jdbc.query(sql,new SiteIndexRowMapper());
	}

	@Override
	public List<SiteIndex> findByStatus(int siteStatus) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id, ");
		sbf.append("site_url, ");
		sbf.append("site_name, ");
		sbf.append("site_keyword, ");
		sbf.append("site_desc, ");
		sbf.append("site_referrer, ");
		sbf.append("site_status ");
		sbf.append(" FROM "+ TABLE);
		sbf.append(" WHERE site_status = :site_status");
		sbf.append(" ORDER BY global_id DESC");
		String sql = sbf.toString();
		logger.info(sql);
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("site_status", siteStatus);
		
		return jdbc.query(sql,paramSource,new SiteIndexRowMapper());
	}

	@Override
	public List<SiteIndex> findByQuery(String queryString) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id, ");
		sbf.append("site_url, ");
		sbf.append("site_name, ");
		sbf.append("site_keyword, ");
		sbf.append("site_desc, ");
		sbf.append("site_referrer, ");
		sbf.append("site_status ");
		sbf.append(" FROM "+TABLE);
		sbf.append(" WHERE 1=1 ");
		sbf.append(queryString);
		String sql = sbf.toString();
		logger.info(sql);
		
		return jdbc.query(sql,new SiteIndexRowMapper());
	}

	@Override
	public SiteIndex findById() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int create(SiteIndex x) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("INSERT INTO "+TABLE+"(");
		sbf.append("site_url, ");
		sbf.append("site_name, ");
		sbf.append("site_keyword, ");
		sbf.append("site_desc, ");
		sbf.append("site_referrer, ");
		sbf.append("site_status) ");
		
		sbf.append("VALUES(");
		sbf.append(":site_url, ");
		sbf.append(":site_name, ");
		sbf.append(":site_keyword, ");
		sbf.append(":site_desc, ");
		sbf.append(":site_referrer, ");
		sbf.append(":site_status)");
		String sql = sbf.toString();
		
		System.out.println(sql);
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("site_url", x.getSiteUrl());
		paramSource.addValue("site_name", x.getSiteName());
		paramSource.addValue("site_keyword", x.getSiteKeyword());
		paramSource.addValue("site_referrer", x.getSiteReferrer());
		paramSource.addValue("site_desc", x.getSiteDesc());
		paramSource.addValue("site_status", x.getSiteStatus());
		
		return jdbc.update(sql,paramSource);

	}

	@Override
	public int update(SiteIndex siteIndex) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("UPDATE " + TABLE+" SET ");
		sbf.append(" site_url = :site_url,");
		sbf.append(" site_name = :site_name,");
		sbf.append(" site_keyword = :site_keyword,");
		sbf.append(" site_referrer = :site_referrer,");
		sbf.append(" site_desc = :site_desc,");
		sbf.append(" site_status = :site_status");
		sbf.append(" WHERE 1=1 ");
		sbf.append(" AND global_id = :global_id");
		
		String sql = sbf.toString();
		logger.info(sql);
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		
		return jdbc.update(sql,paramSource);

	}

	@Override
	public void delete(Long globalId) {
		// TODO Auto-generated method stub

	}
	
	private static class SiteIndexRowMapper implements RowMapper<SiteIndex>{
		public SiteIndex mapRow(ResultSet rs, int rowNumber) throws SQLException {
			SiteIndex x = new SiteIndex();
			x.setGlobalId(rs.getLong("global_id"));
			x.setSiteUrl(rs.getString("site_url"));
			x.setSiteName(rs.getString("site_name"));
			x.setSiteKeyword(rs.getString("site_keyword"));
			x.setSiteDesc(rs.getString("site_desc"));
			x.setSiteReferrer(rs.getString("site_referrer"));
			x.setSiteStatus(rs.getInt("site_status"));
            return x;
		}		
	}

}
