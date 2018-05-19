package com.athensoft.blog.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.athensoft.blog.entity.PostContent;

@Repository
@Qualifier("postContentDaoJdbcImpl")
public class PostContentDaoJdbcImpl implements PostContentDao{
	
	private final static Logger logger = Logger.getLogger(PostContentDaoJdbcImpl.class);
	
	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	private final String TABLE = "BLOG_POST_CONTENT";
	
	private static StringBuffer KEYS = new StringBuffer();
	private static StringBuffer FIELDS = new StringBuffer();
	private static StringBuffer CREATE_PARAM = new StringBuffer();
	
	static {
		KEYS.append("global_id, ");
		
		FIELDS.append("post_uuid, ");
		FIELDS.append("post_status, ");
		FIELDS.append("post_content ");
		
		CREATE_PARAM.append(":post_uuid, ");
		CREATE_PARAM.append(":post_status, ");
		CREATE_PARAM.append(":post_content ");
	}
	
	@Override
	public PostContent findById(long postUUID) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append(KEYS);
		sbf.append(FIELDS);
		sbf.append(" FROM "+TABLE);
		sbf.append(" WHERE 1=1 ");
		sbf.append(" AND post_uuid = :post_uuid");
		String sql = sbf.toString();
		logger.info(sql);
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("post_uuid", postUUID);
		return jdbc.queryForObject(sql, paramSource, new PostContentRowMapper());
	}

	@Override
	public int create(PostContent x) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("INSERT INTO ").append(TABLE).append("(");
		sbf.append(FIELDS);
		sbf.append(")");
		sbf.append(" VALUES(");
		sbf.append(CREATE_PARAM);
		sbf.append(")");
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("post_uuid", x.getPostUUID());
		paramSource.addValue("post_status", x.getPostStatus());
		paramSource.addValue("post_content", x.getPostContent());
		
		return jdbc.update(sql,paramSource);
	}

	@Override
	public int update(PostContent postContent) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("UPDATE ").append(TABLE).append(" SET ");
		sbf.append("post_content=:post_content,");
		sbf.append("post_status=:post_status");
		
		sbf.append(" WHERE 1=1");
		sbf.append(" AND post_uuid=:post_uuid");
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("post_content", postContent.getPostContent());
		paramSource.addValue("post_uuid", postContent.getPostUUID());
		paramSource.addValue("post_status", postContent.getPostStatus());
		return jdbc.update(sql,paramSource);
	}

	@Override
	public int delete(long postUUID) {
		// TODO Auto-generated method stub
		return 0;
	}
	

	private static class PostContentRowMapper implements RowMapper<PostContent>{
		@Override
		public PostContent mapRow(ResultSet rs, int rowNumber) throws SQLException {
			PostContent x = new PostContent();
			x.setGlobalId(rs.getLong("global_id"));
			x.setPostUUID(rs.getLong("post_uuid"));
			x.setPostStatus(rs.getInt("post_status"));
			
			x.setPostContent(rs.getString("post_content"));
			
            return x;
		}
		
	}

	
}
